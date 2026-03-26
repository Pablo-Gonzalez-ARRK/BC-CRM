# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a **Microsoft Dynamics 365 Business Central (BC) AL extension** named "Hello World" (publisher: Sid Publisher, version 1.0.0.1). It extends BC with CRM integration fields and synchronization mappings for Dataverse/Dynamics 365 Sales.

- **Language:** AL (Application Language), runtime 16.0
- **BC Application version:** 27.0.0.0
- **Object ID range:** 57100–57149
- **Feature flag:** `NoImplicitWith` is enabled — always qualify object references explicitly

## Build & Debug

There is no CLI build command. Compilation and deployment are handled by the **AL Language extension for VS Code**:

- **Build:** `Ctrl+Shift+B` in VS Code (or `AL: Publish` command)
- **Debug:** Use the launch configuration in [.vscode/launch.json](.vscode/launch.json) — targets a "Sandbox-Dataverse" Microsoft cloud sandbox, startup page ID 22
- **Symbols:** AL package dependencies live in [.alpackages/](.alpackages/) — refresh with `AL: Download Symbols`

## Architecture

This extension implements **bidirectional CRM synchronization** between BC and Dataverse using the standard Integration Table Mapping framework.

### Data Flow

```
Dataverse (CRM)  ←→  BC (Business Central)
  salesorderdetail ↔ Sales Line (Table 37)
  product          →  Item (Table 27)  [CRM→BC only]
```

### Key Patterns

1. **Event Subscriber Pattern** — Mappings are registered by subscribing to `OnAfterResetCRMNAVSetupDefaults`. This is how both table-level (`ARRKOrderProductMapping.al`) and field-level (`ARRKSalesOrderFieldMapping.al`) mappings are injected.

2. **Integration Table Mapping** — `CRMSalesOrderDetail.al` defines a virtual CRM table (`TableType = CRM`) that mirrors the Dataverse `salesorderdetail` entity. Field names must match the Dataverse schema exactly (no spaces, CamelCase).

3. **Table/Page Extensions** — Custom ARRK fields are added to standard BC tables (Item, Sales Line) via `tableextension` and surfaced via `pageextension`. New fields go in `SalesLineExt.al` / `ItemTableExt.al` and corresponding page extensions.

### Module Structure

| Module | Files | Purpose |
|--------|-------|---------|
| Item–Product sync | `Items-Products/` | Maps BC Items ↔ CRM Products (CRM→BC direction) |
| Sales Order sync | `CRMSalesOrderDetail.al`, `ARRKOrderProductMapping.al`, `ARRKSalesOrderFieldMapping.al` | Maps BC Sales Lines ↔ CRM Order Products (bidirectional) |
| UI | `SalesOrderSubformExt.al`, `Items-Products/ItemCardExt.al` | Surfaces new fields in pages |

### Adding a New Synced Field

1. Add the field to the BC table extension (`SalesLineExt.al` or `ItemTableExt.al`)
2. Add the corresponding field to the CRM virtual table (`CRMSalesOrderDetail.al` or `Items-Products/CRMProductExt.al`) — field name must match the Dataverse logical name
3. Register the field mapping in the appropriate mapping codeunit (`ARRKSalesOrderFieldMapping.al` or `Items-Products/ARRKCRMMapping.al`) inside the `OnAfterResetCRMNAVSetupDefaults` subscriber
4. Republish the extension to the sandbox

# IRDB

## Directory structure

```
database
└── categories
    ├── Air_Purifiers # Sample category of Air Purifiers
    │   ├── .meta # Meta folder for this category
    │   │   ├── icon.png
    │   │   ├── icon.svg
    │   │   └── manifest.json
    │   └── Rovex # Sample folder for Rovex brand
    │       └── RG57B_BGE # Sample folder for specific control model
    │           ├── orders.json # Orders for configuring this remote
    │           ├── RG57B_BGE.ir # Sample file with .ir content
    │           └── vitalya_2007.ui.json # sample file with ui preset
    ├── Cameras
    │   └── .meta
    │       ├── icon.png
    │       ├── icon.svg
    │       └── manifest.json
    ├── Consoles
    ├── Fans
    ├── Toys
    └── TVs
```

## Run mkdocs locally

Run docker compose

```bash
docker compose up
```

Open in browser `http://0.0.0.0:8000`
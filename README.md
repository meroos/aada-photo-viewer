# AADA Photo Viewer (demo)

A map and photo carousel for stone artefacts in the Archaeological Artefact Database of Finland (AADA).

**Live page:** see the GitHub Pages address in this repository's About box.

## What it does

- Shows 21,630 stone artefacts with a published photograph at 9,458 findspots.
- Filters by artefact type, subtype, subperiod (M1–R2) and free-text search (KM number, site, municipality, raw material).
- Clicking a findspot opens a carousel of its finds; the Gallery tab shows the same selection as a grid.
- A link such as `?find=KM 12061:2` opens a single find directly.

## How the photographs are shown

No photographs are stored in this repository. The page reads each photograph on demand from the AADA photo deposit on Zenodo ([doi:10.5281/zenodo.11256533](https://doi.org/10.5281/zenodo.11256533)). It requests only the bytes of the chosen photo from inside the published zip archives (an HTTP range request) and unpacks it in the browser. `data.json` records where each photograph sits in the archives.

## Files

| File | Content |
|---|---|
| `index.html` | The whole viewer (Leaflet map, filters, carousel, gallery) |
| `data.json` | Stone artefacts with photographs, from a snapshot of the AADA layer on geodata.utu.fi (10 November 2026), and the photo positions in the Zenodo archives |

## Citation

Pesonen, P., Moilanen, U., Roose, M., Saipio, J., Tiilikkala, J., Sanwal, U., Immonen, V., Vesakoski, O. & Onkamo, P. 2024. Archaeological Artefact Database of Finland (AADA). *Scientific Data* 11, 815. https://doi.org/10.1038/s41597-024-03602-8

Photographs: AADA Photographs, Zenodo, https://doi.org/10.5281/zenodo.11256533

## Limitations of the demo

- Photographs are full resolution (typically about 0.5 MB) and take a moment to load.
- Zenodo allows about 130 requests per minute per visitor; the page pauses if the limit is reached.
- Only stone artefacts are included, and the data is a snapshot that does not follow later edits on GeoNode.

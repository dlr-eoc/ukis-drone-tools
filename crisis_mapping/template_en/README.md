# Fast crisis mapping with ODM Console
**Input**: Structured drone images in JPEG format

**Output**: A georeferenced orthophoto in GeoTiff format


OpenDroneMap (ODM) is an open source software for image processing (photogrammetry). This guide looks at the "Console" version, which can be used as a command line tool in Windows. The advantages of this version are the simple set-up and the possibility to automate the execution (as described here). This means that ODM can be used quickly even without detailed knowledge. ODM does not require an Internet connection and can be run locally on a computer with at least 16 GB of RAM.

Note: In spring 2026, the OpenDroneMap project split and since then the two tools ODM and ODX have existed in parallel. So far, no major differences in functionality have emerged, both versions are almost identical. In the following, ODM is used analogously for both versions. It is recommended to use the latest version.

## Installation
1. Download the latest ODM version (ODM_Setup_3.X.X.exe): https://github.com/OpenDroneMap/ODM/releases or ODX: https://github.com/WebODM/ODX/releases
2. Run and install ODM by double-clicking on the setup file (leave the default directory at C:/ODM/)
3. Download and unzip the current mapping template: https://github.com/dlr-eoc/ukis-drone-tools/releases

## Mapping
1. Copy the template folder ("template_mapping_COPY_and_RENAME") to "Documents" and rename the folder to "mapping_location_time_unit" (see note on naming)
2. Open the new mapping folder and copy all drone images into the "images" folder
3. Double-click on the file "Start_Mapping_odm.bat" or "Start_Mapping_odx.bat", depending on the version installed. If necessary, click on "More information" and "Run anyway". The calculation should now start and run until it is finished. The last line in the console contains "ODM app finished".
4. After completed mapping in the mapping folder:
    - View the report under /odm_report/report.pdf and rename it to report_location_time_unit.pdf
    - Rename the orthophoto under /odm_orthophoto/odm_orthophoto.tif in the format orthophoto_location_time_unit.tif

## Notes on file naming
- Location: Distinctive location name in the vicinity of the drone flight
- Time: Start time of the drone recording in the format of a standardised
date-time group, e.g. 040835jun25 = 04 June 2025, 08:35 a.m.
- Unit: Radio call name or unique identification of the drone unit,
z. e.g. heros_freising_76
- For thermal images, append "_thermal" to the file name
- For all details: Lower case only, no special characters, no spaces
- Example: orthophoto_altenahr_081500jun21_heros_freising_76

## Procedure for thermal images
Although thermal images can be calculated into an orthophoto with ODM Console (if they were taken with a continuous colour gradient such as IronRed), the actual temperature information is lost in the process. For a quick visual evaluation or documentation, an orthophoto with thermal colours may be sufficient, but for a precise analysis of the actual temperature values, an evaluation with [WebODM](https://github.com/WebODM/WebODM) and a prior conversion of the temperature data with e.g. [Thermal Tools](https://webodm.net/thermaltools) for DJI drones is necessary.

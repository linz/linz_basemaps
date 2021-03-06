#ReadMe

![Screenshot Colour Basemap](https://github.com/linz/linz_basemaps/blob/master/img/Colour_GenTwo_Working_Windows_250Bathy.jpeg)

#####Before undertaking this project, be sure to download the zipped folder containing all the necessary projects, images, and instructions.  For those unfamiliar with this type of download, look near the top right of the respository and click "Download ZIP".

As part of LINZ�s commitment to the open community, we are releasing all project and support scripts for the LINZ NZ Terrain basemaps for personal basemap creation.
The following instructions detail processes for building LINZ basemaps on Linux and Windows platforms. For best results, it is helpful to have these programs and items in place before starting:

- TileMill https://gist.github.com/bsudekum/b4606871250d9d834b3d
- PostgreSQL with PostGIS extensions http://postgis.net/ or http://www.postgresql.org
- QGIS (for Windows users) http://www.qgis.org/en/site/forusers/download.html (OSGeo4W version)
- GDAL (for Linux users)
- File Geodatabase of vector layers
- DEM and hillshade raster tiles
- Texture fill patterns

This project employs a collection of vector and raster data derived from the LINZ Data Service(LDS) and Landcover Database (LCDB 3.3) by Landcare Research.  For those unfamiliar with LDS or LRIS, the following links will help users become more familiar with these services and the data they provide.

#######Data for the LCDB 3.3 layer must be downloaded from the Landcare Research website listed below.

- https://data.linz.govt.nz/
- http://www.linz.govt.nz/data/linz-data-service
- http://www.linz.govt.nz/data/linz-data-service/getting-started
- https://lris.scinfo.org.nz/

##Project Set-Up
Reconstructing basemaps requires using TileMill, QGIS, and a PostgreSQL database with PostGIS extensions.  Listed below are links for software and generalised instructions for builds on Linux and Windows systems.

####1. TileMill

The latest installs for TileMill, Windows and Linux, are found here:

- https://gist.github.com/bsudekum/b4606871250d9d834b3d

######*Set-Up*

Install TileMill as instructed.  Depending on which Linux release users are running, TileMill may have additional build requirements.  Recent versions of Tilemill built in the Atom Shell merely be downloaded and run from the installed folder without further installation.


####2. PostgreSQL / PostGIS

A complete package for windows 32 or 64bit, including PostgreSQL, PostGIS, and PGAdmin III is available for download here:

- http://postgis.net/

We recommend PostgreSQL version 9.1+ and PostGIS version 2.1+

######*Set-Up*

Install PostgreSQL, PostGIS and create a spatial database as recommended with the below parameters. 
If you are running the PostgreSQL database on your localhost, with the intention of generating basemaps then the server config should be setup to all trusted connections from the localhost. This can be done by adding **host all  all  127.0.0.1/32 trust** to your pg_hba.conf and then restarting the server.
To create the database run the following SQL:

	CREATE DATABASE "NZ_Data";
	
You should then create a normal database user that Tilmill will connect with. Run the following SQL:

	CREATE ROLE postgres
	
Your connection string to the database will then look like (unless you didn't allow for trusted connections)

	host=localhost port=5432 dbname=NZ_Data user=postgres

Within the new database, NZ_Data, run the following SQL:

	CREATE EXTENSION postgis;

allowing spatial functionality of the PostgreSQL database.


####3. QGIS (OSGeo4W) for Windows or GDAL for Linux users

QGIS provides easy access to GDAL and FileGDB readability via the OSGeo4W Shell in Windows systems.  For this project, access to GDAL and the ability to read FileGDB is required.  Windows systems do not inherently have access to read GDAL via the commandline.  Access is made available by installing OSGeo4W and running commandline processes via the OSGeo4W Shell.  Linux users need only install GDAL through the standard processes providing commands via a standard terminal.

Windows: http://www.qgis.org/en/site/forusers/download.html

Linux: https://launchpad.net/~ubuntugis/+archive/ubuntu/ppa

######*Set-Up*

The OSGeo4W build of QGIS gives users access to GDAL and the ability to read FileGDB via the QSGeo4W Shell in Windows.  Install QGIS as instructed.
Linux users need only to install the GDAL drivers if desired, however, a full install of QGIS is recommended, as it often comes in handy for visualising and testing data.

####4. Import Layer Data


This project contains a mix of raster and vector data with a combined size of around 21GB.  There is a 3.5GB limit for direct downloads from LDS, so currently, it is not possible to obtain the entire package of vector and raster in a single download.  Vector and hillshade must be ordered via courier service from LDS; however, DEM rasters require a courier delivery.  It is recommended users combine **all data into a couriered package** as it is a useful method bundling all necessary tables and rasters on a single stick drive. **ESRI File GDB and GeoTIFF are the recommended layer formats.**  The following describes obtaining the package containing vector and raster data needed for base map construction.

######*LDS*

Use this geolink to LDS in order to preload all layers necessary for rebuilding the basemaps. Connecting to LDS with this link selects layers and prepares them for download. There should be eighteen vector layers and two raster files selected. Please note the comments regarding DEM downloads below.

-	https://data.linz.govt.nz/x/YZb72b

After clicking the link, you are taken to the LINZ Data Service (LDS), with the layers preloaded and ready for download.  Look to the top right corner of the LDS website and select �Download or Order�.

######*DEM*

Currently, due to the DEM exceeding the 3.5GB download limit for LDS, users must order this layer via a courier service.  This service is accessed through LDS and may be set up through the download window:

- https://data.linz.govt.nz/layer/1768-nz-8m-digital-elevation-model-2012/

DEM tiles are recommended to be in .tif format.  There 115 separate DEM tiles delivered in a single folder.  This folder should be placed on your local system in an easily accessible place.  Note the file path as you will need it later to create a .vrt and eventually link the DEM data to Tilemill.

######*Hillshade*

Hillshade tiles are available as a courier service or for direct download. Users are suggested to order the hillshade and DEM as a courier service together at the same time.  Keep all the hillshade tiles in a single folder.

- https://data.linz.govt.nz/layer/2074-nz-8m-hillshade-2014/

Hillshade tiles are recommended to be in .tif format.  There 115 separate hillshade tiles delivered in a single folder.  This folder should be placed on your local system in an easily accessible place.  Note the file path as you will need it later to create a .vrt and eventually link the hillshade data to Tilemill.

######*The Land Cover Database (LCDB 3.3) at the Land Resource Information Systems Portal (LRIS)*

The Land Cover Database 3.3 (LCDB 3.3), developed by Land Research, is featured prominently in the colour basemap and necessary for both the colour and black & white maps.  Data is downloaded from the LRIS Portal similarly to the downloading format used by LDS.  FileGDB is the recommended file format. Below is the link to LRIS and the LCDB 3.3:

- https://lris.scinfo.org.nz/layer/401-lcdb-v33-deprecated/

######*Datasource Projection*

**WGS84 Web Mercator (EPSG:3857)** is suggested to avoid unforeseen projection errors in TileMill and is most suited for standard web mapping applications.  Users may select the desired projection for their layers before ordering their download in LDS.

Using other projections, for example NZTM2000 (EPSG:2193) or WGS84 (EPSG:4326), is possible. The following blog describes the process for changing the source projection for TileMill projects from EPSG:3857 to the desired projection format:

- http://blog.kartena.se/using-tilemill-without-spherical-mercator/

######*FileGDB to PostgreSQL Database Conversion*

Once all vector data is obtained, users need to load and convert the File Geodatabase layers to Postgres tables.  The following describes this process. 

FileGDB tables cannot be imported directly to PostgreSQL databases. In Windows, using ogr2ogr command line tool via the OSGeo4W shell accomplishes this task. Linux users may simply run ogr2ogr in the terminal if GDAL is properly installed. Importing FileGDB to the PostgreSQL is completed using the following command line functions (be sure to change directories to the folder containing the data):

Windows:

	FOR /R /D %i in (*.gdb) do (ogr2ogr -f "PostgreSQL" PG:"host=localhost dbname=NZ_Data user=postgres password=postgres port=5432" -skipfailures %i)

Linux:

	find . -name '*.gdb' | xargs -P 3 -t -n1 -I %  ogr2ogr -f "PostgreSQL" PG:"dbname=NZ_Data user=postgres port=5432 password=postgres host=localhost" % 

**Note:** You may need to change your *username* and *password* parameters to fit your PostgreSQL database configuration.

####5. Build Folders

When installed, TileMill builds itself into the /Documents folder of Windows and in Linux under the folder /Documents/Mapbox.

######*Download Projects*

Project folders contain style sheets used by TileMill to build each map project.  These folders, NZ Terrain Graphite and NZ Terrain Natural Colour, are contained in the zipped file download at the beginning of this instruction manual.  Layers in each style sheet currently point to the PostgreSQL database.  No modification should be necessary, however, there may be instances where user will need to relink file paths, for example relinking DEM and Hillshade .vrt to each project.  Place the downloaded style sheets locally inside the projects folder of MapBox.  (�\Documents\MapBox\project)

######*Raster Texture Fills*

Raster texture fill are included in the original downloaded package.  They may also be viewed and downloaded here: https://github.com/linz/linz_basemaps/tree/master/img . Place the textures locally in: ...\Documents\MapBox\cache.  Texture files required for this project are:

- gravelrocks.jpg

- basetexture.jpg

- watertexture.jpg

####6. Project Edits

######*Creating a VRT*

With the raster and hillshade in place, create a .vrt file in the same folder as the respective rasters.  A GDAL virtual format file (VRT) is required for the hillshade and DEM raster, however, are NOT delivered with the raster packages.  Users will need to create these .vrt themselves and embed them into their respective folders.  For those unfamiliar with the vrt format, below is a helpful guide:

- http://www.gdal.org/gdalbuildvrt.html

The following GDAL commandline processes will create a .vrt.  A .vrt is needed for both the hillshade and the DEM raster files, so run the GDAL command in both raster folders.  Before running the below commands, be sure to change directories, navigating to the folder containing the raster files.  Create the .vrt in the same folder as the raster files.

*Windows (run through OSGeo4W Command Shell):*

	gdalbuildvrt -resolution highest Hillshade_VRT.vrt *.tif

	gdalbuildvrt -resolution highest DEM_VRT.vrt *.tif

*Linux:*

	gdalbuildvrt -resolution highest Hillshade_Multiply_Repro_VRT.vrt *.tif


######*Linking Hillshade and DEM*

Once a project is started for the first time in Tilemill, users are asked to relink the Hillshade and DEM back to the .vrt.  Open the layers tab in the bottom left corner of the Tilemill window, find either the hillshade or DEM layer, and select the pencil shape opening the editor window.  Navigate to where your .vrt is stored, select, and save.

##Licensing

This project is released under the terms of the new *Creative Commons Attribution 3.0 New Zealand* license and is found here:

- http://creativecommons.org/licenses/by/3.0/nz/

Copyright 2013 Crown copyright (c) Land Information New Zealand and the New Zealand Government.


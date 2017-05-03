# Description of Data

## General information

* **Location**: Liverpool local authority, England.
* **Format**: Spatial database, GIS vector layer.
* **Spatial Unit of Analysis**: Lower Layer Super Output Area (LSOA).
* **Coordinate System**: EPSG 27700 OSGB 1936 British National Grid.
* **Format**: GeoJson vector file.
* **Geometry**: Polygon.
* **Number of features**: 298.

Data used in this research corresponds to a polygon GeoJson file
composed of 298 contiguous Lower Layer Super Output Areas (LSOA) of
Liverpool, England (Figure 1).

![](fig1.png)

<span id="_Ref355359566" class="anchor"></span>Figure 1. Living
deprivation index (for 2015) at LSOA level in Liverpool.

## Attributes

### The English Indices of Deprivation

The Living Environment Deprivation index is one of the seven dimensions
that compose the English Indices of Deprivation, which includes income;
employment; health and disability; education, skills and training;
crime; barriers to housing and services; and living environment.
According to (Smith et al., 2015), the model of multiple deprivation is
based on the idea that (1) the separate dimensions of deprivation can be
recognized and measured separately, (2) these dimensions of deprivation
are experienced by individuals living in an area, and (3) an area-level
measure of deprivation for each of the dimensions can be calculated
(Smith et al., 2015).

Although the paper uses only one index (LED index), the GIS layer
contains all the indices of (Smith et al., 2015). For a full description
of these indices, see

> [https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/464485/English_Indices_of_Deprivation_2015_-_Technical-Report.pdf](https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/464485/English_Indices_of_Deprivation_2015_-_Technical-Report.pdf)

Table 1. English indices of deprivation variables.

  **Variable name** | **Description**
  ----------------- | -------------------------------------------------------------------------
  `imd\_rank`       | Rank according the Index of Multiple Deprivation
  `imd\_score`      | Score of the Index of Multiple Deprivation
  `income`          | Score of the Income Deprivation domain of the IMD
  `employment`      | Score of the Employment Deprivation domain of the IMD
  `education`       | Score of the Education, Skills & Training Deprivation domain of the IMD
  `health`          | Score of the Health Deprivation & Disability domain of the IMD
  `crime`           | Score of the Crime domain of the IMD
  `housing`         | Score of the Barriers to Housing & Services domain of the IMD
  `living-env`      | Score of the Living Environment Deprivation domain of the IMD
  `idaci`           | Score of the Income Deprivation Affecting Children Index
  `idaopi`          | Score of the Income Deprivation Affecting Older People Index

### Remote sensing derived variables

We processed a satellite image of Liverpool city downloaded in February
2016 from the Google Satellite Map web service with enough zoom level to
be similar to VHR imagery with sub-meter pixel size using a tool for
automatic downloading of image tiles (<http://www.allallsoft.com/gsmd>);
we then combined them into a single mosaic in geographic coordinates.
According to the data provider information, displayed in Google Earth,
and the Google Earth blog, these Liverpool VHR imagery were collected by
Google itself in 4th April 2015. We projected the image mosaic onto the
same coordinate system of the spatial database of deprivation indices of
Liverpool and obtained a georeferenced image with a pixel size of 70 cm.
We used that image as an input to calculate image-derived features or
variables for the same spatial units for which the LED index is reported
(LSOA).

A per-pixel classification of the scene was performed to calculate a set
of land-cover variables within LSOA polygons. Next, we used an automatic
tool for image feature extraction at the object level called FETEX 2.0
(Ruiz, Recio, Fernández-Sarría, & Hermosilla, 2011) to extract spectral,
texture and structure features at the LSOA level (Table 1. Remote
sensind-derived variables at LSOA level.). For a full description of the
image processing workflow, see:

> [http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0176684#sec002](http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0176684#sec002)

Table 2. Remote sensing-derived variables at LSOA level.

![](table2.png)

**References:**

Ruiz, L. A., Recio, J. A., Fernández-Sarría, A., & Hermosilla, T.
(2011). A feature extraction software tool for agricultural object-based
image analysis. *Computers and Electronics in Agriculture*, *76*(2),
284–296. https://doi.org/10.1016/j.compag.2011.02.007

Smith, T., Noble, M., Noble, S., Wright, G., McLennan, D., & Plunkett,
E. (2015). *The English Indices of Deprivation 2015: Technical Report*.
London: Department of Communities and Local Government. Retrieved from
https://www.gov.uk/government/uploads/system/uploads/attachment\_data/file/464485/English\_Indices\_of\_Deprivation\_2015\_-\_Technical-Report.pdf

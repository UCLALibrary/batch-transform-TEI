# batch-transform-TEI
Java project to batch transform TEI xml for StGallMss
# XML to HTML Batch Transformation

This Java project, implemented in the `BatchTransform.java` class, is designed to perform batch transformation of XML files into HTML using XSLT. It provides a simple command-line interface to process XML files from a specified input directory and transform them using an XSLT stylesheet, saving the resulting HTML files to an output directory.

## Usage

1. Clone the repository:

   ```shell
   git clone <repository-url>

2. Navigate to the project directory:

	 ```shell
	cd <project-directory>
	Compile the Java code:
	javac BatchTransform.java
	Run the program:
	java BatchTransform

This will execute the batch transformation, converting XML files in the input directory to HTML using the specified XSLT stylesheet.

3. Configuration

	You may need to configure the following parameters in the BatchTransform.java file to suit your needs:
	
	inputDir: The directory containing the XML files to be transformed.
	outputDir: The directory where the resulting HTML files will be saved.
	XSLT stylesheet path: Specify the path to your XSLT stylesheet for the transformation.
	Dependencies
	This project uses the following Java libraries:
	
	javax.xml.transform.Transformer and related classes for XML to HTML transformation.
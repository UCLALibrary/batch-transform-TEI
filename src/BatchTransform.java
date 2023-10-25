
import java.io.File;
import java.io.FileOutputStream;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

public class BatchTransform {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("Hello World!");
		 String inputDir = "/Users/parinitamulak/stgallmss-vite/public";
	        String outputDir = "/Users/parinitamulak/eclipse-workspace/BatchTransformTEI/src/output";

	        // Create a directory for the output if it doesn't exist
	        new File(outputDir).mkdirs();

	        // Create a TransformerFactory
	        TransformerFactory factory = TransformerFactory.newInstance();

	        try {
	            // Get a list of XML files in the input directory
	            File[] xmlFiles = new File(inputDir).listFiles((dir, name) -> name.toLowerCase().endsWith(".xml"));

	            if (xmlFiles != null) {
	                for (File xmlFile : xmlFiles) {
	                    // Construct the paths for input and output files
	                    String inputFilePath = xmlFile.getAbsolutePath();
	                    String outputFilePath = outputDir + File.separator + xmlFile.getName().replace(".xml", ".html");

	                    // Create a Transformer for XSLT transformation
	                    Transformer transformer = factory.newTransformer(new StreamSource("/Users/parinitamulak/eclipse-workspace/BatchTransformTEI/src/xslt/TEIManuscriptContents.xsl"));

	                    // Perform the transformation
	                    transformer.transform(new StreamSource(inputFilePath), new StreamResult(new FileOutputStream(outputFilePath)));

	                    System.out.println("Transformed: " + xmlFile.getName());
	                }
	            } else {
	                System.err.println("No XML files found in the input directory.");
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	}

}

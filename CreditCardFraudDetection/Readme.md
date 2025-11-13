# **H2O MOJO Local Inference & Timing Script**

This Python script demonstrates how to load an H2O-3 MOJO (Model Object, Optimized) artifact, automatically generate a sample input row based on the model's metadata, perform real-time inference, and measure the prediction time.

This utility is useful for quickly verifying MOJO file integrity and benchmarking local inference latency.

## **🚀 Prerequisites**

You must have Python installed, along with the following libraries:

1. **H2O-3 Python Client:** For interacting with the H2O-3 runtime.  
2. **Pandas & NumPy:** For data handling and generating sample inputs.

### **Installation**

pip install h2o pandas numpy

## **⚙️ Setup**

### **1\. MOJO File Placement**

The script is hardcoded to look for the MOJO file at a specific path.

* **MOJO Source:** /content/h2o\_deployment\_files/binary\_classification\_leader.zip

You must replace this placeholder path with the actual location of your H2O-3 MOJO file. Update the following line in the script:

mojo\_path \= "/content/h2o\_deployment\_files/binary\_classification\_leader.zip"

### **2\. H2O Cluster Configuration**

The script initializes the H2O runtime with 2GB of memory allocated to the Java Virtual Machine (JVM). Adjust the max\_mem\_size parameter in h2o.init() if your environment requires more or less memory.

h2o.init(max\_mem\_size="2G", nthreads=-1)

## **💻 Usage**

To run the inference and timing script, simply execute the Python file:

python your\_script\_name.py

### **Expected Output**

The script will provide the following output steps:

1. Confirmation of **H2O-3 runtime initialization**.  
2. Confirmation of **MOJO model loading**.  
3. **Input inspection:** Lists the expected feature columns (input\_cols) and the target variable (response\_column).  
4. **Sample generation:** Displays the automatically generated Pandas DataFrame used for inference.  
5. **Prediction result:** Prints the head of the H2OFrame containing the predicted class and probabilities.  
6. **Inference time:** Shows the measured time taken for the model.predict(frame) call in seconds.

## **🛠️ Script Deep Dive**

### **Automatic Input Generation**

A key feature of the script is the dynamic generation of a single input row:

* It uses the model's internal metadata (model.\_model\_json\["output"\]\["data\_info"\]) to determine the expected column names and types.  
* For **numerical** inputs, it generates a random float between 0 and 1 using np.random.random().  
* For **categorical (enum)** or **string** inputs, it uses the dummy value \["A"\].

This ensures the generated test data matches the structure and types expected by the loaded MOJO model, preventing common data type errors during inference.

### **Inference Timing**

The script uses the standard Python time module to capture the precise execution duration of the model.predict(frame) call:

start\_time \= time.time()  
pred \= model.predict(frame)  
end\_time \= time.time()  
print(f"\\n⏱️ Inference time: {end\_time \- start\_time:.6f} seconds")

This is a reliable way to benchmark the speed of your deployed model artifact.

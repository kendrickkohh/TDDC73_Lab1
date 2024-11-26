import React from "react";
import {
  View,
  Text,
  TextInput,
  StyleSheet,
  Image,
  TouchableOpacity,
} from "react-native";

const App = () => {
  return (
    <View style={styles.container}>
      <Text style={styles.title}>Example 3: React Native</Text>
      <Image source={require("./wheel.png")} style={styles.circleImage} />
      <View style={styles.buttonContainer}>
        <TouchableOpacity style={styles.buttonComponent} onPress={() => {}}>
          <Text>BUTTON</Text>
        </TouchableOpacity>
        <TouchableOpacity style={styles.buttonComponent} onPress={() => {}}>
          <Text>BUTTON</Text>
        </TouchableOpacity>
      </View>
      <View style={styles.buttonContainer}>
        <TouchableOpacity style={styles.buttonComponent} onPress={() => {}}>
          <Text>BUTTON</Text>
        </TouchableOpacity>
        <TouchableOpacity style={styles.buttonComponent} onPress={() => {}}>
          <Text>BUTTON</Text>
        </TouchableOpacity>
      </View>
      <View style={styles.inputContainer}>
        <Text style={styles.label}>Email</Text>
        <TextInput style={styles.input} placeholder="Enter your email" />
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
    backgroundColor: "#fff",
    alignItems: "center",
  },
  title: {
    fontSize: 24,
    marginVertical: 16,
    color: "#fff",
    backgroundColor: "#4CAF50",
    width: "100%",
  },
  circleImage: {
    width: 150,
    height: 150,
    borderRadius: 75,
    marginVertical: 16,
  },
  buttonContainer: {
    flexDirection: "row",
    justifyContent: "space-around",
    width: "100%",
    marginVertical: 8,
  },
  buttonComponent: {
    backgroundColor: "#D3D3D3",
    padding: 10,
  },
  inputContainer: {
    flexDirection: "row",
    alignItems: "center",
    width: "80%",
    marginTop: 16,
  },
  label: {
    fontSize: 16,
    color: "#757575",
  },
  input: {
    borderBottomWidth: 1,
    borderBottomColor: "#AA1945",
    flex: 1,
    marginLeft: 8,
    paddingVertical: 4,
  },
});

export default App;

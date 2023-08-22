import React from "react";
import { StyleSheet, Text, View } from "react-native";

export const RootScreen = () => {
    return (
        <View style={styles.container}>
            <Text>React Native</Text>
        </View>
    )
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "#FFFFFF",
  },
});

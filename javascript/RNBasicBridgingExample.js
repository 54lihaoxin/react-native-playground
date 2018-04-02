import React from 'react';
import { Alert, AppRegistry, Button, NativeModules, StyleSheet, Text, View } from 'react-native';

class RNBasicBridgingExample extends React.Component {

  _onPress() {
    var example = NativeModules.BasicBridgingExample
    console.log(example.firstDayOfTheWeek)
    example.addEvent(
      'Birthday Party',
      '99 Privet Drive, San Jose, CA',
      123456789,
      {detailKey1: "detail value 1", detailKey2: "detail value 2"},
      function(obj) {
        console.log('In example.addEvent callback with object:');
        console.log(obj);
        Alert.alert(JSON.stringify(obj, null, 2));
      }
    );
  }
  
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.title}>Try this button!</Text>
        <View style={styles.buttonContainer}>
          <Button onPress={this._onPress} title="Do Something" color="#FFFFFF" accessibilityLabel="Do something button"/>
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FFFFFF',
  },
  title: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  buttonContainer: {
    backgroundColor: '#2E9298',
    borderRadius: 10,
    padding: 10,
    shadowColor: '#000000',
    shadowOffset: {
      width: 0,
      height: 3
    },
    shadowRadius: 10,
    shadowOpacity: 0.25
  },
});

// Module name
AppRegistry.registerComponent('RNBasicBridgingExample', () => RNBasicBridgingExample);
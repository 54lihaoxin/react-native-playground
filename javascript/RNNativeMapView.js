import React from 'react';
import NativeMapView from './NativeUiComponent/NativeMapView.ios'
import { AppRegistry } from 'react-native';

// See original tutorial here: https://facebook.github.io/react-native/docs/native-components-ios.html

class RNNativeMapView extends React.Component {
  render() {
    var region = {
      latitude: 37.48,
      longitude: -122.16,
      latitudeDelta: 0.1,
      longitudeDelta: 0.1,
    };
    return (
      <NativeMapView
        region={region}
        zoomEnabled={false}
        style={{ flex: 1 }}
      />
    );
  }
}

// Module name
AppRegistry.registerComponent('RNNativeMapView', () => RNNativeMapView);
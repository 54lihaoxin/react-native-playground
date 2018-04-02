import React from 'react';
import NativeMapView from './NativeUiComponent/NativeMapView.ios'
import { AppRegistry } from 'react-native';

class RNNativeMapView extends React.Component {
  render() {
    return <NativeMapView style={{ flex: 1 }} zoomEnabled={false}/>;
  }
}

// Module name
AppRegistry.registerComponent('RNNativeMapView', () => RNNativeMapView);
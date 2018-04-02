import React from 'react';
import NativeMapView from './NativeUiComponent/NativeMapView.ios'
import PropTypes from 'prop-types';
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

NativeMapView.propTypes = {
  /**
   * A Boolean value that determines whether the user may use pinch
   * gestures to zoom in and out of the map.
   */
  zoomEnabled: PropTypes.bool,

  /**
   * The region to be displayed by the map.
   *
   * The region is defined by the center coordinates and the span of
   * coordinates to display.
   */
  region: PropTypes.shape({
    /**
     * Coordinates for the center of the map.
     */
    latitude: PropTypes.number.isRequired,
    longitude: PropTypes.number.isRequired,

    /**
     * Distance between the minimum and the maximum latitude/longitude
     * to be displayed.
     */
    latitudeDelta: PropTypes.number.isRequired,
    longitudeDelta: PropTypes.number.isRequired,
  }),
};

// Module name
AppRegistry.registerComponent('RNNativeMapView', () => RNNativeMapView);
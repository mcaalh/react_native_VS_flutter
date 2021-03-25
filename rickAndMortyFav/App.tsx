import { StatusBar } from 'expo-status-bar';
import React from 'react';
import { StyleSheet, Text, View } from 'react-native';
import { Focus } from './src/features/focus/Focus';
import { RickAndMorty } from './src/features/rickAndMorty/RickAndMorty';
import { StoreProvider } from './Store';

export default function App(): JSX.Element {
  return (
    <StoreProvider>
      <View>
        {/* <Focus/> */}
        <RickAndMorty/>
      </View>
    </StoreProvider>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});

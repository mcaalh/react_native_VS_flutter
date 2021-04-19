import React from 'react'; 
import { Text, StyleSheet, StatusBar} from 'react-native'
import styled from 'styled-components/native';

interface AnalyticsScreenProps {
  navigation: any
}

export const AnalyticsScreen = () =>{
  return(
    <Container>
      <StatusBar backgroundColor="#040507"/>
      <Text style={{fontSize: 40, color: "white"}}>Analytics screen</Text>
    </Container>
  );
}

const Container = styled.View`
  flex: 1;
  background-color: #040507;
  align-items: center;
  justify-content: center;
`
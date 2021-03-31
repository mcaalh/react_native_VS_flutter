import React from 'react'
import { View, Text, StyleSheet } from 'react-native'
import { Platform } from 'react-native';

const AppText: React.FC<any> = ({children, style}) => {
    return (
        <View>
            <Text style={[styles.text, style]}>{children}</Text>
        </View>
    )
}

const styles = StyleSheet.create({
    text: {
        fontSize: 18,
        fontFamily: Platform.OS === 'android' ? 'Roboto' : 'Avenir'
    }
})

export default AppText

import React from 'react'
import { View, Text, StyleSheet, TextInput } from 'react-native'

export const Focus = () => {
    return (
        <View style={styles.container}>
            <View style={styles.titleContainer}>
                <Text style={styles.title}> What would you focus on? </Text>
                <View style={styles.focusInput}>
                    <TextInput/>
                </View>
            </View>
        </View>
    )
}

const styles = StyleSheet.create({
    container: {
        flex: 1
    },
    titleContainer: {
        color: '#fff',
        flex: 0.5,
        padding: 16,
        justifyContent: 'center'
    },
    title: {
        color: '#fff',
        fontWeight: '800',
        fontSize: 24
    },
    focusInput: {
        paddingTop: 20
    }
})
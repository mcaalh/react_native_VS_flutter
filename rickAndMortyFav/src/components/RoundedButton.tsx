import React from 'react'
import { View, Text, TouchableOpacity, StyleSheet } from 'react-native'
interface ChildProps{
    style: {};
    textStyle: {};
    size: number;
    title: string;
}

export const RoundedButton: React.FC<ChildProps> = ({
    style = {},
    textStyle = {},
    size = 125,
    ...props
}) => {
    return (
        <TouchableOpacity style={[styles(size).radius]}>
            <Text>{}</Text>
        </TouchableOpacity>
    )
}

const styles = (size) => 
    StyleSheet.create({
        radius: {
            borderRadius: size / 2,
            width: size,
            height: size,
            alignItems: 'center'
        }
})
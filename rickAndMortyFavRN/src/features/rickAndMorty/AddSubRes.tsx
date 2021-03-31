import React from 'react'
import { View, Text, Button, Alert } from 'react-native'

const AddSubRes = () => {
    const reducer = (state, action) => {
        switch (action) {
            case 'ADD':
                console.log(action)
                return state + 1
                
            case 'SUB':
                return state - 1
                
            case 'RES':
                return state = 0
                
            default:
                return state
        }
    }
    const [count, dispatch] = React.useReducer(reducer, 0)
    return (
        <View>
            <Text>{count}</Text>
            <Button
                title="-"
                onPress={() => dispatch('SUB')}
            />
            <Button
                title="+"
                onPress={() => dispatch('ADD')}
            />
            <Button
                title="Res"
                onPress={() => dispatch('RES')}
            />
        </View>
    )
}

export default AddSubRes

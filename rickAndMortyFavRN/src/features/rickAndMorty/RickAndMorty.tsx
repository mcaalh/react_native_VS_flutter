import React from 'react'
import { View, StyleSheet, FlatList } from 'react-native'
import { Store } from './../../store/Store';
import Card from '../../components/Card';
import { fetchDataAction } from './../../store/Actions';

export const RickAndMorty = (): JSX.Element => {
    const {state, dispatch} = React.useContext(Store)
 
    React.useEffect(() => { //get the data as soon as the component ready component did mount
        state.episodes.length === 0 && fetchDataAction(dispatch)
    })

    return (
        <View style={styles.container}>
            
            <FlatList
                data={state.episodes}
                renderItem={({item}) => (<Card episode={item} />)}
                keyExtractor={item => item.id}
            />
        </View>
    )
}

const styles = StyleSheet.create({
  container: {
    padding: 20,
  },
});

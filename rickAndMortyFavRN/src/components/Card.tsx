import React from 'react'
import { View, StyleSheet, Image, TouchableOpacity } from 'react-native'
import { Ionicons } from '@expo/vector-icons';

import AppText from './AppText';
import { ChildProps, IEpisode } from '../models/interfaces';
import { Store } from './../store/Store';
import { toggleFavAction } from '../store/Actions';

const Card: React.FC<ChildProps> = ({episode}) => {
    const {state, dispatch} = React.useContext(Store)
    return (
        <View style={styles.card}>
            <Image style={styles.image} source={{uri: episode.image.medium}}/>
            <View style={styles.detailsContainer}>
                <View>
                    <AppText style={styles.title}>{episode.name}</AppText>
                </View>
                <View>
                    <AppText style={styles.subtitle}>Season {episode.season.toString()}</AppText>
                </View>
            </View>
            <TouchableOpacity style={styles.heart} onPress={() => toggleFavAction(episode, state, dispatch)}>
                <Ionicons name="heart" size={24} color={ state.favourites.find((fav:IEpisode) => fav.id === episode.id) ? '#F7070763' : '#FFFFFF63' } />
            </TouchableOpacity>
        </View>
    )
}

const styles = StyleSheet.create({
    card: {
        borderRadius: 15,
        backgroundColor: '#f8f4f4',
        marginBottom: 20,
        overflow: 'hidden'
    },
    detailsContainer: {
        padding: 20
    },
    image: {
        width: '100%',
        height: 200
    },
    title: {
        marginBottom: 7
    },
    subtitle: {
        color: '#49A8CE'
    },
    heart: {
        position: 'absolute',
        right: 0
    }
})

export default Card

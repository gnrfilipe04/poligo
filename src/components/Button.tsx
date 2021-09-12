import React from "react";
import { 
    TouchableOpacity,
    TouchableOpacityProps,
    View,
    Image,
    Text,
    StyleSheet
    } from "react-native";
import colors from "../styles/colors";

type ButtonProps = TouchableOpacityProps & {
    title: string;
    icon: any;
    background: string;
    color: string;
    border: string;
}

export function ButtonIcon({ title, icon, background, color, border, ...rest }: ButtonProps){
    return (
        <TouchableOpacity 
        style={[styles.container, {backgroundColor: background}]} 
        {...rest}
        >
            <View style={[styles.iconWrapper, {borderColor: border}]}>
                <Image source={icon}/>
            </View>

            <Text style={[styles.title, {color: color}]}>
                {title}
            </Text>
        </TouchableOpacity>
    )
}

const styles = StyleSheet.create({
    container: {
        width: '100%',
        height: 56,
        borderRadius: 8,
        flexDirection: 'row',
        alignItems: 'center'
    },
    title: {
        flex: 1,
        fontSize: 15,
        textAlign: 'center'
    },
    iconWrapper: {
        width: 56,
        height: 56,
        justifyContent: 'center',
        alignItems: 'center',
        borderRightWidth: 1,
        borderColor: colors.gray
    },
})
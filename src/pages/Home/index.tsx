import React, { useEffect, useState } from "react";
import { Image, Text, View, StyleSheet } from "react-native";
import { ScrollView } from "react-native-gesture-handler";
import { Header } from "../../components/Header";
import { Search } from "../../components/Search";
import { api } from "../../services/api";
import colors from "../../styles/colors";
import fonts from "../../styles/fonts";
import layout from "../../styles/layout";

interface DeputiesProps {
    dados: [
        {
            email: string,
            id: number,
            idLegislatura: number,
            nome: string,
            siglaPartido: string,
            siglaUf: string,
            uri: string,
            uriPartido: string,
            urlFoto: string
        }
    ],
    links: [
        {
            href: string,
            rel: string,
            type: string
        }
    ]
}

export function Home(){
    const [deputies, setDeputies] = useState({} as DeputiesProps)
    const [ready, setReady] = useState(false)

    async function getDeputies(){
        console.log('carregando')
        const response = await api.get("deputados")
        setDeputies(response.data)
        console.log('carregou')
        setReady(true)
    }

    useEffect(() => {
        getDeputies()
    }, [])

    return(
        <>
            <Header />
            <Search />
            <ScrollView style={{marginTop: 40}}>
            {ready && deputies?.dados?.map(item => (
                
                <View key={item.id} style={[styles.container, {
                    marginVertical: layout.heightPercentageToDP("1.5%"),
                    marginHorizontal: layout.heightPercentageToDP("1.5%"),
                    padding: layout.heightPercentageToDP("1.5%"),
                }]}>
                    <Image style={styles.tinyLogo} source={{uri: item.urlFoto}} resizeMode="stretch"/>
                    <View style={styles.contentContainer}>
                        <View style={[styles.nameContainer, {
                            height: layout.heightPercentageToDP("5%"),
                            paddingHorizontal: layout.heightPercentageToDP("2%"),
                            width: layout.widthPercentageToDP("73%"),
                            maxWidth: layout.widthPercentageToDP("73%")
                        }]}>
                            <Text style={[styles.name, {
                                fontSize: layout.widthPercentageToDP("5%"),
                                maxWidth: layout.widthPercentageToDP("50%")
                            }]}>{item.nome}</Text>
                            <Text style={[styles.party, {
                                fontSize: layout.widthPercentageToDP("4%"),
                            }]}>
                                {item.siglaPartido.length > 5 ? item.siglaPartido.substr(0, 3) + '.' : item.siglaPartido}
                                
                            </Text>
                        </View>
                    </View>
                </View>
            ))}
            </ScrollView>

        </>
    )
}

const styles = StyleSheet.create({
    container: {
      backgroundColor: "#e9e8f6",
      borderRadius: 4,
      flexDirection: "row",
    },
    contentContainer: {
        flexDirection: "column"
    },
    tinyLogo: {
      width: 70,
      height: 85,
      borderRadius: 4,
    },
    nameContainer: {
        flexDirection: "row",
        alignItems: "center",
        justifyContent: "space-between"
    },
    name: {
      color: colors.gray,
      fontFamily: fonts.bold  
    },
    party: {
      color: "#3af177",
      fontFamily: fonts.bold,
    }
  });
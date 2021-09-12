import React, { useEffect, useState } from "react";
import { Image, Text, View, StyleSheet } from "react-native";
import { Header } from "../components/Header";
import { api } from "../services/api";

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

    async function getDeputies(){
        const response = await api.get("deputados")
        setDeputies(response.data)
    }

    useEffect(() => {
        getDeputies()
    }, [])

    return(
        <>
            <Header />
            
            {deputies?.dados?.map(item => (
                
                <Image key={item.id} style={styles.tinyLogo} source={{uri: item.urlFoto}} />
            ))}

        </>
    )
}

const styles = StyleSheet.create({
    container: {
      paddingTop: 50,
    },
    tinyLogo: {
      width: 50,
      height: 50,
    },
    logo: {
      width: 66,
      height: 58,
    },
  });
import { useState } from 'react';
import { Button, StyleSheet, Text, View } from 'react-native';

export default function App() {
  const [count, setCount] = useState(0);

  return (
    <View style={styles.container}>
      <Text style={styles.title}>React Native</Text>

      <Text style={styles.count}>Laskurin arvo: {count}</Text>

      <View style={styles.row}>
        {/* Own change: the counter can't go below zero */}
        <Button
          title="-"
          onPress={() => setCount(count - 1)}
          disabled={count === 0}
        />
        <Button title="Reset" onPress={() => setCount(0)} />
        <Button title="+" onPress={() => setCount(count + 1)} />
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 32,
    alignItems: 'center',
    justifyContent: 'center',
  },
  title: {
    fontSize: 28,
    marginBottom: 24,
  },
  count: {
    fontSize: 24,
    marginBottom: 24,
  },
  row: {
    flexDirection: 'row',
    gap: 12,
  },
});

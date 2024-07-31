import clsx from 'clsx';
import Heading from '@theme/Heading';
import styles from './styles.module.css';

const features = [
  {
    title: '😌 Easy to Use',
    description: 'Base was designed with getting started quickly in mind, just require the module and you\'re good to go!',
  },
  {
    title: '📦 Extensible',
    description: 'Base is built with extensibility in mind, allowing you to add your own custom functionality with ease.',
  },
  {
    title: '🎉 Lots of Features',
    description: 'Supports a wide range of features out of the box, including services helpers, and more!',
  },
];

function Feature({ title, description }) {
  return (
    <div className={clsx(styles.featureCard)}>
      <Heading as="h3">{title}</Heading>
      <p>{description}</p>
    </div>
  );
}

export default function HomepageFeatures() {
  return (
    <section className={styles.features}>
      {features.map((feature, idx) => (
        <Feature key={idx} {...feature} />
      ))}
    </section>
  );
}

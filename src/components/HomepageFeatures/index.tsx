import type {ReactNode} from 'react';
import clsx from 'clsx';
import Link from '@docusaurus/Link';
import Heading from '@theme/Heading';
import styles from './styles.module.css';

type FeatureItem = {
  title: string;
  description: ReactNode;
  link: string;
};

const FeatureList: FeatureItem[] = [
  {
    title: 'Docs',
    description: <>Linux, Networking, TryHackMe learning notes.</>,
    link: '/docs/',
  },
  {
    title: 'Labs',
    description: <>Hands-on labs and practical cybersecurity exercises.</>,
    link: '/labs/',
  },
];

function Feature({title, description, link}: FeatureItem) {
  return (
    <div className={clsx('col col--3')}>
      <Link to={link} className={styles.card}>
        <div className="text--center">
          <Heading as="h3">{title}</Heading>
        </div>
        <div className="text--center padding-horiz--md">
          <p>{description}</p>
        </div>
      </Link>
    </div>
  );
}

export default function HomepageFeatures(): ReactNode {
  return (
    <section className={styles.features}>
      <div className="container">
        <div className="row">
          {FeatureList.map((props, idx) => (
            <Feature key={idx} {...props} />
          ))}
        </div>
      </div>
    </section>
  );
}
# 5_PRIME_UTRS

 ## Introduction
 
 The Covid Pandemic marked the emergence of messenger RNAs therapeutics in the world of medicine. The use of mRNA medicine is now expanding from covid to other diseases such as HIV, cancer, ... 
 In the context of mRNA vaccines, once a viral protein (drug) is designed to induce immune response, we have to design an mRNA that will serve as a set of "instructions" to produce this viral protein in one's body. We are thus interested in the process of back-translation from protein to mRNA, which is illustrated on the figure 1 below.
 
MRNA design is hard first because of the number of possibilities. The choice of the sequence is important as Literature and experiments have shown the importance of codon choices, especially on protein expression \cite{quax2015codon}. This property is very important in optimal drug design, allowing us to design and control the level of expression of drug in one's body. It can be "measured" using Mean Ribosome Load which is equivalent to the number of ribosomes that bind onto an mRNA. 5'UTRs, which mark the start of an mRNA (cf. figure 1), play a major role in protein expression. In 2019, the Seelig Lab in collaboration with Moderna Therapeutics have predicted the mean ribosome load (MRL) for a given 5'UTR \cite{sample2019human} using a Convolutional Neural Network model called  Optimus 5'. In this project, we reproduce their approach (CNNs) and predict MRL using other deep learning techniques (Lstms), classification algorithms (Multinomial Bayes, Random Forest) and an NLP approach (Transformers) to explore other ways to predict MRL and possibly improve on the accuracy. The input to our algorithms is a 5' UTR sequence which is an ordered string of nucleotides (A, T, G, C) and the output to our algorithms is the Mean Ribosome Load (MRL) which is a float.

<p align="center">
<img src="https://github.com/marie-huynh/5_PRIME_UTRS/blob/main/Figures/Central%20Dogma.png" width="895.5" height="363">
Figure 1: Central Dogma
</p>

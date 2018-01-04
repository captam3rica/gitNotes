# Generate a CSR Using Openssl

1.  Verify that `openssl` and its dependecies are installed on the local system.

2.  Create a directory where you will store your keys and csr(s) and change to
    that directory.

    `mkdir /path/to/directory`   
    `cd /path/to/directory`

3.  Generate a private key.

    `openssl genrsa -out /dir/that/you/created/[name-of-key].key 4096`

4.  Generate the CSR 

    `openssl req -new -sha256 -key /path/to/[name-of-key].key -out
    /path/to/[name-of-csr].csr`

    Answer the prompts as they appear.

    -   **Common Name**: Fully qualified domain name of the site that you wish 
        to request the ssl cert for. 

    -   **Organization Name**: The exact legal name or your org

    -   **Organizational Unit**: Section of the org

    -   **City or Locality**: location of your org

    -   **State or Province**

    -   **Country**: 2 leter ISO abbrevision for your country (i.e. US)

5.  Verify the CSR

    `openssl req -noout -text -in /path/to/[name-of-csr].csr`

6.  Submit the CSR to your Certificate Authority (CA)

    Verisign or RapidSSL are good options


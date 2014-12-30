ZNC - An advanced IRC bouncer on Stackato
=========================================
For more information on ZNC refer to their [Github repository](https://github.com/znc/znc).

To deploy to Stackato:

    stackato push -n

After deploying, login using the following credentials:

    user: admin
    pass: stackato

Access the web interface and create a network to connect to under `Your Settings` - `Networks`

Connect to the ZNC bouncer using the address specified in the deployment logs and for the server password pass in: 

    $username/$network_name:$password
    
    # e.g. admin/freenode:stackato if you named the network you created earlier freenode 

ZNC - An advanced IRC bouncer on Stackato
=========================================
For more information on ZNC refer to their [Github repository](https://github.com/znc/znc).

To deploy to Stackato:

    stackato push -n

After deploying, login using the following credentials:

    user: admin
    pass: stackato

Access the web interface and create a network to connect to under `Your Settings` - `Networks`

Connect to the ZNC bouncer using the address specified in the deployment logs. To manually bring up the connection details run:

    stackato run ruby show_information.rb

If you created a network via the web interface pass in the following as the server password when connecting using a IRC client:

    $username/$network_name:$password
    
    # e.g. admin/freenode:stackato if you named the network you created earlier freenode 

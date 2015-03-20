.class public Lcom/motorola/messaging/frameworkadapter/motorola/MotoConnectivity;
.super Ljava/lang/Object;
.source "MotoConnectivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllByName2(Ljava/lang/String;Z)[Ljava/net/InetAddress;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "isipv6"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getIpVersion(Landroid/net/NetworkInfo;)I
    .locals 10
    .param p0, "ni"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 39
    if-nez p0, :cond_1

    move v7, v8

    .line 62
    :cond_0
    :goto_0
    return v7

    .line 42
    :cond_1
    const-string v9, "connectivity"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    .line 46
    .local v2, "connMgr":Landroid/net/IConnectivityManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-interface {v2, v9}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 51
    .local v1, "addrArray":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v4, 0x0

    .line 52
    .local v4, "haveV4":Z
    const/4 v5, 0x0

    .line 53
    .local v5, "haveV6":Z
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 54
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v9, v0, Ljava/net/Inet4Address;

    if-eqz v9, :cond_2

    move v4, v7

    .line 55
    :cond_2
    instance-of v9, v0, Ljava/net/Inet6Address;

    if-eqz v9, :cond_3

    move v5, v7

    :cond_3
    goto :goto_1

    .line 47
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrArray":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v4    # "haveV4":Z
    .end local v5    # "haveV6":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    move v7, v8

    .line 48
    goto :goto_0

    .line 57
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v1    # "addrArray":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .restart local v4    # "haveV4":Z
    .restart local v5    # "haveV6":Z
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    .line 58
    const/4 v7, 0x2

    goto :goto_0

    .line 59
    :cond_5
    if-nez v5, :cond_0

    move v7, v8

    .line 62
    goto :goto_0
.end method

.method public static getMobileDataEnabled(Landroid/net/ConnectivityManager;)Z
    .locals 1
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public static requestRouteToHostAddress(Landroid/net/ConnectivityManager;ILjava/net/InetAddress;I)Z
    .locals 1
    .param p0, "cm"    # Landroid/net/ConnectivityManager;
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # Ljava/net/InetAddress;
    .param p3, "mask"    # I

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    goto :goto_0
.end method

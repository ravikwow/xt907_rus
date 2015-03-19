.class public Lcom/motorola/crypto/CryptoFips;
.super Ljava/lang/Object;
.source "CryptoFips.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getEnabled()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    const-string v0, "fips_enabled"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/motorola/crypto/CryptoFips;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/crypto/CryptoFips;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v4, 0x0

    .line 45
    .local v4, "result":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v5, "/sys/class/moto_crypto"

    invoke-direct {v3, v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .local v3, "propFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 47
    const-string v5, "CryptoFips"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FIPS property file does not exist: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    move-object v4, p1

    .line 67
    :cond_0
    :goto_0
    return-object v4

    .line 50
    :cond_1
    const/4 v1, 0x0

    .line 52
    .local v1, "is":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .end local v1    # "is":Ljava/io/DataInputStream;
    .local v2, "is":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 54
    const-string v5, "CryptoFips"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FIPS property ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    if-eqz v2, :cond_0

    .line 60
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FilterInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "CryptoFips"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close input stream of FIPS property file \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/DataInputStream;
    .restart local v1    # "is":Ljava/io/DataInputStream;
    :catch_1
    move-exception v0

    .line 56
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "CryptoFips"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get FIPS property file \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    if-eqz v1, :cond_0

    .line 60
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 61
    :catch_2
    move-exception v0

    .line 62
    const-string v5, "CryptoFips"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close input stream of FIPS property file \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 58
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v1, :cond_2

    .line 60
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 63
    :cond_2
    :goto_3
    throw v5

    .line 61
    :catch_3
    move-exception v0

    .line 62
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "CryptoFips"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream of FIPS property file \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\"\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 58
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/DataInputStream;
    .restart local v1    # "is":Ljava/io/DataInputStream;
    goto :goto_2

    .line 55
    .end local v1    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/DataInputStream;
    .restart local v1    # "is":Ljava/io/DataInputStream;
    goto/16 :goto_1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "fips_version"

    invoke-static {v0}, Lcom/motorola/crypto/CryptoFips;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasPostFailed()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, "result":Ljava/lang/Boolean;
    const-string v2, "fips_post_result"

    invoke-static {v2}, Lcom/motorola/crypto/CryptoFips;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "postResult":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 110
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 112
    :cond_0
    return-object v1

    .line 110
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isEnabled()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "result":Ljava/lang/Boolean;
    invoke-static {}, Lcom/motorola/crypto/CryptoFips;->getEnabled()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "enabled":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 96
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 98
    :cond_0
    return-object v1

    .line 96
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isFipsEnabledAndPostFailed()Z
    .locals 6

    .prologue
    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, "result":Z
    invoke-static {}, Lcom/motorola/crypto/CryptoFips;->isEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 123
    .local v0, "fipsEnabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    invoke-static {}, Lcom/motorola/crypto/CryptoFips;->hasPostFailed()Ljava/lang/Boolean;

    move-result-object v1

    .line 125
    .local v1, "postFailed":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 129
    .end local v1    # "postFailed":Ljava/lang/Boolean;
    :cond_0
    const-string v3, "CryptoFips"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFipsEnabledAndPostFailed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v2
.end method

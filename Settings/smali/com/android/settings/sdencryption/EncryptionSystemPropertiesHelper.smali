.class public Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;
.super Ljava/lang/Object;
.source "EncryptionSystemPropertiesHelper.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x10043714334455L


# instance fields
.field private mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getInstance()Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getEncryptionSystemPropertiesAll()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->mValues:Ljava/util/Map;

    .line 33
    return-void
.end method

.method private isChanged(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getInstance()Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getEncryptionSystemPropertiesAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, "tmp":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->mValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    :cond_0
    const/4 v1, 0x1

    .line 102
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 124
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 119
    return-void
.end method


# virtual methods
.method protected getAllValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->mValues:Ljava/util/Map;

    return-object v0
.end method

.method protected getMemoryEncryptionVal()I
    .locals 1

    .prologue
    .line 89
    const-string v0, "memory_encr"

    invoke-virtual {p0, v0}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getValue(Ljava/lang/String;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v2, 0x0

    .line 57
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->mValues:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System properties contains incorrect value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected isMemoryChanged()Z
    .locals 1

    .prologue
    .line 76
    const-string v0, "memory_encr"

    invoke-direct {p0, v0}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->isChanged(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isMemoryKeyTypeChanged()Z
    .locals 2

    .prologue
    .line 80
    const-string v0, "memory_encr"

    invoke-virtual {p0, v0}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->getValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 81
    const-string v0, "mem_encr_key_type"

    invoke-direct {p0, v0}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->isChanged(Ljava/lang/String;)Z

    move-result v0

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isMemorySettingsChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->isMemoryChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->isMemoryKeyTypeChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected resetUserSelection()V
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getInstance()Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getEncryptionSystemPropertiesAll()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->mValues:Ljava/util/Map;

    .line 114
    return-void
.end method

.method protected setValue(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->mValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method protected setValuesForMemoryPolicy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 106
    const-string v0, "memory_encr"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->setValue(Ljava/lang/String;I)V

    .line 108
    const-string v0, "mem_encr_key_type"

    invoke-virtual {p0, v0}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->getValue(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 109
    const-string v0, "mem_encr_key_type"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->setValue(Ljava/lang/String;I)V

    .line 110
    :cond_0
    return-void
.end method

.method protected writePersistMemorySystemProperties()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    invoke-direct {v0}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;-><init>()V

    .line 45
    .local v0, "helperForDevice":Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;
    const-string v1, "memory_encr"

    const-string v2, "memory_encr"

    invoke-virtual {p0, v2}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->getValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->setValue(Ljava/lang/String;I)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->isMemoryKeyTypeChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "mem_encr_key_type"

    const-string v2, "mem_encr_key_type"

    invoke-virtual {p0, v2}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->getValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->setValue(Ljava/lang/String;I)V

    .line 50
    :cond_0
    invoke-static {}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getInstance()Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->getAllValues()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->setEncryptionMemorySystemProperty(Ljava/util/Map;)V

    .line 51
    return-void
.end method

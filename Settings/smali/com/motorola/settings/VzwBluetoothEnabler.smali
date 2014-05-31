.class public Lcom/motorola/settings/VzwBluetoothEnabler;
.super Lcom/android/settings/bluetooth/BluetoothEnabler;
.source "VzwBluetoothEnabler.java"


# instance fields
.field private mBa:Landroid/bluetooth/BluetoothAdapter;

.field private mBaEnabled:Z

.field private mBluetoothProfiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/BluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mTextView:Landroid/widget/TextView;

.field private final mVzwReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mTextView:Landroid/widget/TextView;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBaEnabled:Z

    .line 116
    new-instance v0, Lcom/motorola/settings/VzwBluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/motorola/settings/VzwBluetoothEnabler$1;-><init>(Lcom/motorola/settings/VzwBluetoothEnabler;)V

    iput-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mVzwReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    new-instance v0, Lcom/motorola/settings/VzwBluetoothEnabler$2;

    invoke-direct {v0, p0}, Lcom/motorola/settings/VzwBluetoothEnabler$2;-><init>(Lcom/motorola/settings/VzwBluetoothEnabler;)V

    iput-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 135
    iput-object p1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mContext:Landroid/content/Context;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/settings/VzwBluetoothEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/settings/VzwBluetoothEnabler;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/motorola/settings/VzwBluetoothEnabler;->updateTextView()V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/settings/VzwBluetoothEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/settings/VzwBluetoothEnabler;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/motorola/settings/VzwBluetoothEnabler;->handleBTAdapterStateChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/settings/VzwBluetoothEnabler;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/settings/VzwBluetoothEnabler;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBluetoothProfiles:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/settings/VzwBluetoothEnabler;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/settings/VzwBluetoothEnabler;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBa:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/settings/VzwBluetoothEnabler;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/settings/VzwBluetoothEnabler;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkBluetoothAvailability()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 308
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v2, "mot_device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_0

    .line 312
    :try_start_0
    const-string v2, "com.motorola.motepm.MotDevicePolicyManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isPolicyAllowed"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/ComponentName;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 314
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 319
    :goto_0
    return v0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    const-string v0, "VzwBluetoothEnabler"

    const-string v2, "Problem with MotDevicePolicyManager class to check the bluetoothavailability."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private closeProfileProxies()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBa:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/settings/VzwBluetoothEnabler;->closeProfileProxy(I)V

    .line 207
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/motorola/settings/VzwBluetoothEnabler;->closeProfileProxy(I)V

    .line 208
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/motorola/settings/VzwBluetoothEnabler;->closeProfileProxy(I)V

    .line 209
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/motorola/settings/VzwBluetoothEnabler;->closeProfileProxy(I)V

    .line 210
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/motorola/settings/VzwBluetoothEnabler;->closeProfileProxy(I)V

    .line 211
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/motorola/settings/VzwBluetoothEnabler;->closeProfileProxy(I)V

    .line 212
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/motorola/settings/VzwBluetoothEnabler;->closeProfileProxy(I)V

    .line 213
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/motorola/settings/VzwBluetoothEnabler;->closeProfileProxy(I)V

    .line 215
    :cond_0
    return-void
.end method

.method private closeProfileProxy(I)V
    .locals 3
    .param p1, "profile"    # I

    .prologue
    .line 218
    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBa:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBluetoothProfiles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v1, p1, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 219
    return-void
.end method

.method private getBluetoothSummary()Ljava/lang/CharSequence;
    .locals 14

    .prologue
    const v12, 0x104000e

    const/4 v13, 0x0

    const/4 v11, 0x1

    .line 261
    iget-object v9, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0070

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 262
    .local v8, "summary":Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBa:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBaEnabled:Z

    if-eqz v9, :cond_3

    invoke-direct {p0}, Lcom/motorola/settings/VzwBluetoothEnabler;->checkBluetoothAvailability()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v0, "bluetoothDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v9, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBluetoothProfiles:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothProfile;

    .line 265
    .local v7, "proxy":Landroid/bluetooth/BluetoothProfile;
    if-eqz v7, :cond_0

    .line 266
    invoke-interface {v7}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 267
    .local v1, "connectedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 268
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 269
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    .end local v1    # "connectedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :cond_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 276
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 277
    iget-object v9, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mContext:Landroid/content/Context;

    const v10, 0x7f0b006f

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 304
    .end local v0    # "bluetoothDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_3
    :goto_1
    return-object v8

    .line 280
    .restart local v0    # "bluetoothDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 281
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "deviceName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 283
    iget-object v9, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 285
    :cond_5
    iget-object v9, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mContext:Landroid/content/Context;

    const v10, 0x7f0b006e

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v3, v11, v13

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 286
    goto :goto_1

    .line 289
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "deviceName":Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBa:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v4

    .line 290
    .local v4, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 291
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v9

    if-le v9, v11, :cond_7

    .line 292
    iget-object v9, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mContext:Landroid/content/Context;

    const v10, 0x7f0b006d

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 294
    :cond_7
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 295
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 296
    .restart local v3    # "deviceName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 297
    iget-object v9, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 299
    :cond_8
    iget-object v9, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mContext:Landroid/content/Context;

    const v10, 0x7f0b006c

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v3, v11, v13

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method private getProfileProxies()V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBa:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBa:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 194
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBa:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 195
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBa:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 196
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBa:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 197
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBa:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 198
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBa:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 199
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBa:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 200
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBa:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 202
    :cond_0
    return-void
.end method

.method private handleBTAdapterStateChanged()V
    .locals 2

    .prologue
    .line 240
    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBa:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 241
    .local v0, "isEnabled":Z
    iget-boolean v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBaEnabled:Z

    if-eq v1, v0, :cond_0

    .line 242
    iput-boolean v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBaEnabled:Z

    .line 243
    iget-boolean v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBaEnabled:Z

    if-eqz v1, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/motorola/settings/VzwBluetoothEnabler;->getProfileProxies()V

    .line 249
    :goto_0
    invoke-direct {p0}, Lcom/motorola/settings/VzwBluetoothEnabler;->updateTextView()V

    .line 251
    :cond_0
    return-void

    .line 246
    :cond_1
    invoke-direct {p0}, Lcom/motorola/settings/VzwBluetoothEnabler;->closeProfileProxies()V

    .line 247
    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBluetoothProfiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method private updateTextView()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/motorola/settings/VzwBluetoothEnabler;->getBluetoothSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 258
    :cond_0
    return-void
.end method


# virtual methods
.method protected handleStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 146
    invoke-direct {p0}, Lcom/motorola/settings/VzwBluetoothEnabler;->updateTextView()V

    .line 147
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 179
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mVzwReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mVzwReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBaEnabled:Z

    if-eqz v0, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/motorola/settings/VzwBluetoothEnabler;->closeProfileProxies()V

    .line 185
    iget-object v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBluetoothProfiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBaEnabled:Z

    .line 188
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 151
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 153
    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBa:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 154
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBa:Landroid/bluetooth/BluetoothAdapter;

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBluetoothProfiles:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBluetoothProfiles:Ljava/util/HashMap;

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/motorola/settings/VzwBluetoothEnabler;->handleBTAdapterStateChanged()V

    .line 162
    iget-boolean v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mBaEnabled:Z

    if-nez v1, :cond_2

    .line 163
    invoke-direct {p0}, Lcom/motorola/settings/VzwBluetoothEnabler;->updateTextView()V

    .line 166
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "com.motorola.app.action.BLUETOOTH_ALLOWED_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v1, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mVzwReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    return-void
.end method

.method public setSummaryView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/motorola/settings/VzwBluetoothEnabler;->mTextView:Landroid/widget/TextView;

    .line 140
    invoke-direct {p0}, Lcom/motorola/settings/VzwBluetoothEnabler;->updateTextView()V

    .line 141
    return-void
.end method

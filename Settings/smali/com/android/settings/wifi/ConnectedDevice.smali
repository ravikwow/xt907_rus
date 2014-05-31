.class public Lcom/android/settings/wifi/ConnectedDevice;
.super Landroid/preference/Preference;
.source "ConnectedDevice.java"


# instance fields
.field public mConnectTime:Landroid/text/format/Time;

.field public mDeviceName:Ljava/lang/String;

.field public mIPAddress:Ljava/lang/String;

.field public mMACAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mConnectTime:Landroid/text/format/Time;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "devName"    # Ljava/lang/String;
    .param p3, "IP"    # Ljava/lang/String;
    .param p4, "MAC"    # Ljava/lang/String;
    .param p5, "startTime"    # Landroid/text/format/Time;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mConnectTime:Landroid/text/format/Time;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiApDefaults;->UNKNOWN_STA_NAME:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/WifiApDefaults;->UNKNOWN_STA_NAME:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 37
    :cond_1
    iput-object p3, p0, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    .line 38
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mConnectTime:Landroid/text/format/Time;

    .line 40
    if-eqz p5, :cond_2

    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mConnectTime:Landroid/text/format/Time;

    invoke-virtual {v0, p5}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ConnectedDevice;->setKey(Ljava/lang/String;)V

    .line 46
    return-void

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mConnectTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 49
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 50
    check-cast p1, Ljava/lang/String;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 56
    :goto_0
    return v0

    .line 51
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/motorola/android/wifi/StaInfo;

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    check-cast p1, Lcom/motorola/android/wifi/StaInfo;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/motorola/android/wifi/StaInfo;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Lcom/android/settings/wifi/ConnectedDevice;

    if-eqz v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    check-cast p1, Lcom/android/settings/wifi/ConnectedDevice;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 56
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_3
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConnectedDevice;->updateDisplay()V

    .line 61
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method public updateDisplay()V
    .locals 4

    .prologue
    const v3, 0x7f0b0089

    .line 69
    iget-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ConnectedDevice;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConnectedDevice;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConnectedDevice;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ConnectedDevice;->setSummary(Ljava/lang/CharSequence;)V

    .line 74
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConnectedDevice;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

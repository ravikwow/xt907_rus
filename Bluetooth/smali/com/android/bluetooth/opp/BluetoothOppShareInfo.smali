.class public Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
.super Ljava/lang/Object;
.source "BluetoothOppShareInfo.java"


# instance fields
.field public mConfirm:I

.field public mCurrentBytes:J

.field public mDestination:Ljava/lang/String;

.field public mDirection:I

.field public mFilename:Ljava/lang/String;

.field public mHint:Ljava/lang/String;

.field public mId:I

.field public mMediaScanned:Z

.field public mMimetype:Ljava/lang/String;

.field public mOwner:I

.field public mStatus:I

.field public mTimestamp:J

.field public mTotalBytes:J

.field public mUri:Ljava/lang/String;

.field public mVisibility:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIJJJZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "hint"    # Ljava/lang/String;
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "mimetype"    # Ljava/lang/String;
    .param p6, "direction"    # I
    .param p7, "owner"    # I
    .param p8, "destination"    # Ljava/lang/String;
    .param p9, "visibility"    # I
    .param p10, "confirm"    # I
    .param p11, "status"    # I
    .param p12, "totalBytes"    # J
    .param p14, "currentBytes"    # J
    .param p16, "timestamp"    # J
    .param p18, "mediaScanned"    # Z

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 76
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 80
    iput p6, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    .line 81
    iput p7, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mOwner:I

    .line 82
    iput-object p8, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    .line 83
    iput p9, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    .line 84
    iput p10, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    .line 85
    iput p11, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 86
    iput-wide p12, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    .line 87
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    .line 88
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    .line 89
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMediaScanned:Z

    .line 90
    return-void
.end method


# virtual methods
.method public hasCompletionNotification()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 111
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    if-nez v1, :cond_0

    .line 115
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isObsolete()Z
    .locals 2

    .prologue
    .line 124
    const/16 v0, 0xc0

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ne v0, v1, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadyToStart()Z
    .locals 3

    .prologue
    const/16 v2, 0xbe

    const/4 v0, 0x1

    .line 97
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v1, :cond_1

    .line 98
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-ne v1, v0, :cond_2

    .line 102
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-eq v1, v2, :cond_0

    .line 107
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

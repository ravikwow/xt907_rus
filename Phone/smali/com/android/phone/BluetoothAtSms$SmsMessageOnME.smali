.class Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
.super Ljava/lang/Object;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothAtSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmsMessageOnME"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public body:Ljava/lang/String;

.field public date:I

.field public id:I

.field public person:Ljava/lang/String;

.field public person_id:I

.field public protocol:I

.field public read:I

.field public reply_path_present:Ljava/lang/String;

.field public service_center:Ljava/lang/String;

.field public status:I

.field public subject:Ljava/lang/String;

.field public thread_id:I

.field public type:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothAtSms$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/BluetoothAtSms$1;

    .prologue
    .line 926
    invoke-direct {p0}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncodeMessagePdu(Landroid/content/Context;)[B
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 991
    const-string v5, "getEncodeMessagePdu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\naddress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nbody: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget v5, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 995
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 996
    .local v3, "timeStamp":Landroid/text/format/Time;
    iget v5, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->date:I

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 997
    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-static {v5, v6, v7, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v0

    .line 999
    .local v0, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedMessage:[B

    if-eqz v5, :cond_0

    .line 1000
    iget-object v4, v0, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedMessage:[B

    .line 1012
    .end local v0    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .end local v3    # "timeStamp":Landroid/text/format/Time;
    :cond_0
    :goto_0
    return-object v4

    .line 1003
    :cond_1
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1005
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "pref_key_sms_delivery_reports"

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1007
    .local v2, "requestDeliveryReport":Z
    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-static {v5, v6, v7, v2, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1009
    .local v0, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    if-eqz v5, :cond_0

    .line 1010
    iget-object v4, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto :goto_0
.end method

.method public getEncodeMessagePduLength(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1025
    invoke-virtual {p0, p1}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePdu(Landroid/content/Context;)[B

    move-result-object v0

    .line 1026
    .local v0, "encodeMesagePdu":[B
    if-eqz v0, :cond_0

    .line 1027
    array-length v1, v0

    .line 1028
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEncodePdu(Landroid/content/Context;)[B
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1039
    const/4 v0, 0x0

    .line 1040
    .local v0, "arrayPdu":[B
    invoke-virtual {p0, p1}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePdu(Landroid/content/Context;)[B

    move-result-object v2

    .line 1041
    .local v2, "encodeMesagePdu":[B
    if-eqz v2, :cond_3

    .line 1042
    invoke-virtual {p0, p1}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeScAddressPdu(Landroid/content/Context;)[B

    move-result-object v3

    .line 1043
    .local v3, "encodeScAddressPdu":[B
    if-eqz v3, :cond_1

    .line 1044
    const-string v5, "getEncodePdu"

    const-string v6, "encodeScAddressPdu != null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    array-length v5, v3

    array-length v6, v2

    add-int/2addr v5, v6

    new-array v0, v5, [B

    .line 1046
    const/4 v1, 0x0

    .line 1047
    .local v1, "cur":I
    const/4 v4, 0x0

    .line 1048
    .local v4, "i":I
    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 1049
    aget-byte v5, v3, v4

    aput-byte v5, v0, v1

    .line 1050
    add-int/lit8 v1, v1, 0x1

    .line 1048
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1052
    :cond_0
    const/4 v4, 0x0

    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 1053
    aget-byte v5, v2, v4

    aput-byte v5, v0, v1

    .line 1054
    add-int/lit8 v1, v1, 0x1

    .line 1052
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1057
    .end local v1    # "cur":I
    .end local v4    # "i":I
    :cond_1
    const-string v5, "getEncodePdu"

    const-string v6, "encodeScAddressPdu == null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    new-array v0, v5, [B

    .line 1059
    const/4 v1, 0x0

    .line 1060
    .restart local v1    # "cur":I
    const/4 v4, 0x0

    .line 1061
    .restart local v4    # "i":I
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 1062
    const/4 v5, 0x0

    aput-byte v5, v0, v1

    .line 1063
    add-int/lit8 v1, v1, 0x1

    .line 1061
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1065
    :cond_2
    const/4 v4, 0x0

    :goto_3
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 1066
    aget-byte v5, v2, v4

    aput-byte v5, v0, v1

    .line 1067
    add-int/lit8 v1, v1, 0x1

    .line 1065
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1072
    .end local v1    # "cur":I
    .end local v3    # "encodeScAddressPdu":[B
    .end local v4    # "i":I
    :cond_3
    return-object v0
.end method

.method public getEncodeScAddressPdu(Landroid/content/Context;)[B
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 962
    iget v5, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 964
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 965
    .local v3, "timeStamp":Landroid/text/format/Time;
    iget v5, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->date:I

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 966
    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-static {v5, v6, v7, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v0

    .line 968
    .local v0, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    if-eqz v5, :cond_0

    .line 969
    iget-object v4, v0, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    .line 981
    .end local v0    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .end local v3    # "timeStamp":Landroid/text/format/Time;
    :cond_0
    :goto_0
    return-object v4

    .line 972
    :cond_1
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 974
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "pref_key_sms_delivery_reports"

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 976
    .local v2, "requestDeliveryReport":Z
    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-static {v5, v6, v7, v2, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 978
    .local v0, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    if-eqz v5, :cond_0

    .line 979
    iget-object v4, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_0
.end method

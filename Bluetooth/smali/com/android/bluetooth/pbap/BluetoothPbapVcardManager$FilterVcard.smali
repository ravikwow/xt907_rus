.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterVcard"
.end annotation


# instance fields
.field private final ADR_BIT:I

.field private final BDAY_BIT:I

.field private final EMAIL_BIT:I

.field private final FN_BIT:I

.field private final NICKNAME_BIT:I

.field private final NOTES_BIT:I

.field private final ORG_BIT:I

.field private final PHOTO_BIT:I

.field private final TITLE_BIT:I

.field private final URL_BIT:I

.field private adr:Z

.field private bday:Z

.field private email:Z

.field private fn:Z

.field private nickname:Z

.field private notes:Z

.field private org:Z

.field private photo:Z

.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

.field private title:Z

.field private url:Z


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 962
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    iput v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->FN_BIT:I

    .line 967
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->fn:Z

    .line 969
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->PHOTO_BIT:I

    .line 971
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->photo:Z

    .line 974
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->BDAY_BIT:I

    .line 976
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->bday:Z

    .line 978
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->ADR_BIT:I

    .line 980
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->adr:Z

    .line 982
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->EMAIL_BIT:I

    .line 984
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->email:Z

    .line 986
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->TITLE_BIT:I

    .line 988
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->title:Z

    .line 990
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->ORG_BIT:I

    .line 992
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->org:Z

    .line 994
    const/16 v0, 0x11

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->NOTES_BIT:I

    .line 996
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->notes:Z

    .line 998
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->URL_BIT:I

    .line 1000
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->url:Z

    .line 1002
    const/16 v0, 0x17

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->NICKNAME_BIT:I

    .line 1004
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->nickname:Z

    .line 963
    return-void
.end method

.method private checkValidFilter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "attr"    # Ljava/lang/String;

    .prologue
    .line 1033
    const-string v0, "N:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VERSION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "URL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BDAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ADR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EMAIL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TITLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ORG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NOTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NICKNAME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1039
    :cond_0
    const/4 v0, 0x1

    .line 1041
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkbit(I[B)Z
    .locals 3
    .param p1, "attr_bit"    # I
    .param p2, "filter"    # [B

    .prologue
    .line 1021
    array-length v0, p2

    .line 1022
    .local v0, "filterlen":I
    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v2, p1, 0x8

    sub-int/2addr v1, v2

    aget-byte v1, p2, v1

    rem-int/lit8 v2, p1, 0x8

    shr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 1023
    const/4 v1, 0x0

    .line 1025
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public applyFilter(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "vCard"    # Ljava/lang/String;
    .param p2, "vCardType21"    # Z

    .prologue
    .line 1045
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1046
    .local v0, "attr":[Ljava/lang/String;
    const-string v1, ""

    .line 1049
    .local v1, "filteredVcard":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->fn:Z

    if-nez v4, :cond_2

    if-eqz p2, :cond_2

    const-string v4, "FN"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1050
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 1051
    aget-object v4, v0, v2

    const-string v5, "FN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1052
    const-string v4, ""

    aput-object v4, v0, v2

    .line 1055
    add-int/lit8 v3, v2, 0x1

    .local v3, "j":I
    :goto_1
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 1056
    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkValidFilter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1050
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1060
    .restart local v3    # "j":I
    :cond_1
    const-string v4, ""

    aput-object v4, v0, v3

    .line 1055
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1068
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_2
    iget-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->bday:Z

    if-nez v4, :cond_5

    const-string v4, "BDAY"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1069
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v4, v0

    if-ge v2, v4, :cond_5

    .line 1070
    aget-object v4, v0, v2

    const-string v5, "BDAY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1071
    const-string v4, ""

    aput-object v4, v0, v2

    .line 1074
    add-int/lit8 v3, v2, 0x1

    .restart local v3    # "j":I
    :goto_3
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3

    .line 1075
    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkValidFilter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1069
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1079
    .restart local v3    # "j":I
    :cond_4
    const-string v4, ""

    aput-object v4, v0, v3

    .line 1074
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1086
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_5
    iget-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->adr:Z

    if-nez v4, :cond_8

    const-string v4, "ADR"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1087
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    array-length v4, v0

    if-ge v2, v4, :cond_8

    .line 1088
    aget-object v4, v0, v2

    const-string v5, "ADR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1089
    const-string v4, ""

    aput-object v4, v0, v2

    .line 1092
    add-int/lit8 v3, v2, 0x1

    .restart local v3    # "j":I
    :goto_5
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_6

    .line 1093
    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkValidFilter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1087
    .end local v3    # "j":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1097
    .restart local v3    # "j":I
    :cond_7
    const-string v4, ""

    aput-object v4, v0, v3

    .line 1092
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1104
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_8
    iget-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->email:Z

    if-nez v4, :cond_b

    const-string v4, "EMAIL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1105
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    array-length v4, v0

    if-ge v2, v4, :cond_b

    .line 1106
    aget-object v4, v0, v2

    const-string v5, "EMAIL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1107
    const-string v4, ""

    aput-object v4, v0, v2

    .line 1110
    add-int/lit8 v3, v2, 0x1

    .restart local v3    # "j":I
    :goto_7
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_9

    .line 1111
    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkValidFilter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1105
    .end local v3    # "j":I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1115
    .restart local v3    # "j":I
    :cond_a
    const-string v4, ""

    aput-object v4, v0, v3

    .line 1110
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1122
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_b
    iget-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->title:Z

    if-nez v4, :cond_e

    const-string v4, "TITLE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1123
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8
    array-length v4, v0

    if-ge v2, v4, :cond_e

    .line 1124
    aget-object v4, v0, v2

    const-string v5, "TITLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1125
    const-string v4, ""

    aput-object v4, v0, v2

    .line 1128
    add-int/lit8 v3, v2, 0x1

    .restart local v3    # "j":I
    :goto_9
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_c

    .line 1129
    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkValidFilter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1123
    .end local v3    # "j":I
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1133
    .restart local v3    # "j":I
    :cond_d
    const-string v4, ""

    aput-object v4, v0, v3

    .line 1128
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1140
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_e
    iget-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->org:Z

    if-nez v4, :cond_11

    const-string v4, "ORG"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1141
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a
    array-length v4, v0

    if-ge v2, v4, :cond_11

    .line 1142
    aget-object v4, v0, v2

    const-string v5, "ORG"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1143
    const-string v4, ""

    aput-object v4, v0, v2

    .line 1146
    add-int/lit8 v3, v2, 0x1

    .restart local v3    # "j":I
    :goto_b
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_f

    .line 1147
    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkValidFilter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1141
    .end local v3    # "j":I
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1151
    .restart local v3    # "j":I
    :cond_10
    const-string v4, ""

    aput-object v4, v0, v3

    .line 1146
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1158
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_11
    iget-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->notes:Z

    if-nez v4, :cond_14

    const-string v4, "NOTE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1159
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_c
    array-length v4, v0

    if-ge v2, v4, :cond_14

    .line 1160
    aget-object v4, v0, v2

    const-string v5, "NOTE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1161
    const-string v4, ""

    aput-object v4, v0, v2

    .line 1164
    add-int/lit8 v3, v2, 0x1

    .restart local v3    # "j":I
    :goto_d
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_12

    .line 1165
    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkValidFilter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1159
    .end local v3    # "j":I
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1169
    .restart local v3    # "j":I
    :cond_13
    const-string v4, ""

    aput-object v4, v0, v3

    .line 1164
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1179
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_14
    iget-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->nickname:Z

    if-eqz v4, :cond_15

    if-eqz p2, :cond_18

    :cond_15
    const-string v4, "NICKNAME"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1180
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_e
    array-length v4, v0

    if-ge v2, v4, :cond_18

    .line 1181
    aget-object v4, v0, v2

    const-string v5, "NICKNAME"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1182
    const-string v4, ""

    aput-object v4, v0, v2

    .line 1185
    add-int/lit8 v3, v2, 0x1

    .restart local v3    # "j":I
    :goto_f
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_16

    .line 1186
    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkValidFilter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1180
    .end local v3    # "j":I
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1190
    .restart local v3    # "j":I
    :cond_17
    const-string v4, ""

    aput-object v4, v0, v3

    .line 1185
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1197
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_18
    iget-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->url:Z

    if-nez v4, :cond_1b

    const-string v4, "URL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1198
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_10
    array-length v4, v0

    if-ge v2, v4, :cond_1b

    .line 1199
    aget-object v4, v0, v2

    const-string v5, "URL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1200
    const-string v4, ""

    aput-object v4, v0, v2

    .line 1203
    add-int/lit8 v3, v2, 0x1

    .restart local v3    # "j":I
    :goto_11
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_19

    .line 1204
    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkValidFilter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1198
    .end local v3    # "j":I
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1208
    .restart local v3    # "j":I
    :cond_1a
    const-string v4, ""

    aput-object v4, v0, v3

    .line 1203
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1215
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_1b
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_12
    array-length v4, v0

    if-ge v2, v4, :cond_1d

    .line 1216
    aget-object v4, v0, v2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 1217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1215
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1221
    :cond_1d
    return-object v1
.end method

.method public isPhotoEnabled()Z
    .locals 1

    .prologue
    .line 1029
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->photo:Z

    return v0
.end method

.method public setFilter([B)V
    .locals 1
    .param p1, "filter"    # [B

    .prologue
    .line 1008
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->fn:Z

    .line 1009
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->photo:Z

    .line 1010
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->bday:Z

    .line 1011
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->adr:Z

    .line 1012
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->email:Z

    .line 1013
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->title:Z

    .line 1014
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->org:Z

    .line 1015
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->notes:Z

    .line 1016
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->url:Z

    .line 1017
    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->checkbit(I[B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->nickname:Z

    .line 1018
    return-void
.end method

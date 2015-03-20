.class public final Lcom/motorola/blur/setup/ServiceErrorTranslator;
.super Ljava/lang/Object;
.source "ServiceErrorTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/ServiceErrorTranslator$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SetupBSET"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructSNPError(Landroid/content/Context;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "error"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    .param p2, "providerPrettyName"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p1}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translateSNPError(Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)I

    move-result v0

    .line 62
    .local v0, "resId":I
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static constructServiceError(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "error"    # Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .param p2, "snpError"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    .param p3, "prettyName"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->SNPError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne p1, v0, :cond_0

    .line 37
    invoke-static {p0, p2, p3}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->constructSNPError(Landroid/content/Context;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getPrettyName(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "providerId"    # J

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 44
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "pretty_name"

    aput-object v0, v2, v8

    .line 45
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 46
    .local v7, "provider":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 51
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 52
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 55
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_1
    return-object v7
.end method

.method public static isWifiOn(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 104
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 105
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 106
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 109
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 107
    goto :goto_0

    :cond_1
    move v2, v3

    .line 109
    goto :goto_0
.end method

.method public static final translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "code"    # Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .prologue
    const v0, 0x7f080051

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 119
    if-nez p1, :cond_0

    .line 120
    sget-object p1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NullPointerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 121
    const-string v1, "SetupBSET"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "translating a null error code!"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 123
    :cond_0
    sget-object v1, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 186
    const-string v1, "SetupBSET"

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error code is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 187
    :goto_0
    :pswitch_0
    return v0

    .line 126
    :pswitch_1
    const v0, 0x7f08004c

    goto :goto_0

    .line 128
    :pswitch_2
    const v0, 0x7f08004d

    goto :goto_0

    .line 130
    :pswitch_3
    const v0, 0x7f08004e

    goto :goto_0

    .line 132
    :pswitch_4
    const v0, 0x7f08004f

    goto :goto_0

    .line 134
    :pswitch_5
    const v0, 0x7f080050

    goto :goto_0

    .line 136
    :pswitch_6
    const v0, 0x7f08003c

    goto :goto_0

    .line 139
    :pswitch_7
    const v0, 0x7f080052

    goto :goto_0

    .line 141
    :pswitch_8
    const v0, 0x7f080055

    goto :goto_0

    .line 143
    :pswitch_9
    const v0, 0x7f080056

    goto :goto_0

    .line 145
    :pswitch_a
    const v0, 0x7f080057

    goto :goto_0

    .line 147
    :pswitch_b
    const v0, 0x7f080058

    goto :goto_0

    .line 149
    :pswitch_c
    const v0, 0x7f080059

    goto :goto_0

    .line 152
    :pswitch_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 153
    const v0, 0x7f0800bf

    goto :goto_0

    .line 155
    :cond_1
    const v0, 0x7f08005b

    goto :goto_0

    .line 158
    :pswitch_e
    const v0, 0x7f08005c

    goto :goto_0

    .line 160
    :pswitch_f
    const v0, 0x7f08005d

    goto :goto_0

    .line 162
    :pswitch_10
    const v0, 0x7f08005e

    goto :goto_0

    .line 164
    :pswitch_11
    const v0, 0x7f08005f

    goto :goto_0

    .line 166
    :pswitch_12
    const v0, 0x7f080060

    goto :goto_0

    .line 168
    :pswitch_13
    const v0, 0x7f080062

    goto :goto_0

    .line 170
    :pswitch_14
    const v0, 0x7f080063

    goto :goto_0

    .line 172
    :pswitch_15
    const v0, 0x7f080064

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final translateSNPError(Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)I
    .locals 2
    .param p0, "error"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .prologue
    .line 66
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 98
    const v0, 0x7f08003f

    :goto_0
    return v0

    .line 71
    :pswitch_0
    const v0, 0x7f080052

    goto :goto_0

    .line 81
    :pswitch_1
    const v0, 0x7f08005c

    goto :goto_0

    .line 85
    :pswitch_2
    const v0, 0x7f080054

    goto :goto_0

    .line 88
    :pswitch_3
    const v0, 0x7f080053

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

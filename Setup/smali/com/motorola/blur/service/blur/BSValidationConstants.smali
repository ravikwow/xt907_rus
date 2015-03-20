.class public final Lcom/motorola/blur/service/blur/BSValidationConstants;
.super Ljava/lang/Object;
.source "BSValidationConstants.java"


# static fields
.field public static final ALL_HEX_NUMERIC_PATTERN:Ljava/lang/String; = "^[0-9a-fA-F]*"

.field public static final ALL_NUMERIC_PATTERN:Ljava/lang/String; = "^[0-9]*"

.field public static final EMAIL_PATTERN:Ljava/lang/String; = "^[\\w\\.=-]+@[\\w\\.-]+\\.[\\w]{2,6}$"

.field public static final INVALID_IMSI:Ljava/lang/String; = "INVALID_IMSI"

.field public static final INVALID_PHONE_NUMBER:Ljava/lang/String; = "INVALID_PHONE_NUMBER"

.field public static final INVALID_SERIAL_NUMBER:Ljava/lang/String; = "INVALID_SERIAL_NUMBER"

.field public static final MAX_ACCOUNT_NAME:I = 0x50

.field public static final MAX_EMAIL_LENGTH:I = 0x80

.field public static final MAX_IMEI_LENGTH:I = 0x32

.field public static final MAX_IMSI_LENGTH:I = 0x10

.field public static final MAX_NAME_LENGTH:I = 0x64

.field public static final MAX_PASSWORD:I = 0x32

.field public static final MAX_PASSWORD_LENGTH:I = 0x14

.field public static final MAX_PHONE_LENGTH:I = 0x32

.field public static final MAX_PROVIDER_SERVERNAME:I = 0x50

.field public static final MAX_USERNAME:I = 0x50

.field public static final MIN_EMAIL_LENGTH:I = 0x6

.field public static final MIN_IMEI_LENGTH:I = 0xe

.field public static final MIN_IMSI_LENGTH:I = 0xd

.field public static final MIN_NAME_LENGTH:I = 0x1

.field public static final MIN_PASSWORD_LENGTH:I = 0x4

.field public static final MIN_PHONE_LENGTH:I = 0x7

.field public static final NO_IMSI:Ljava/lang/String; = "NO_IMSI"

.field public static final NO_PHONE_NUMBER:Ljava/lang/String; = "NO_PHONE_NUMBER"

.field public static final NO_SERIAL_NUMBER:Ljava/lang/String; = "NO_SERIAL_NUMBER"

.field public static final PASSWORD_PATTERN:Ljava/lang/String; = "^[^\\s]*$"

.field public static final PHONE_PATTERN:Ljava/lang/String; = "^[\\+0-9\\- ]*"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

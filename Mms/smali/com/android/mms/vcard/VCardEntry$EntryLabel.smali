.class public final enum Lcom/android/mms/vcard/VCardEntry$EntryLabel;
.super Ljava/lang/Enum;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryLabel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/vcard/VCardEntry$EntryLabel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/vcard/VCardEntry$EntryLabel;

.field public static final enum ANDROID_CUSTOM:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

.field public static final enum ANNIVERSARY:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

.field public static final enum BIRTHDAY:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

.field public static final enum EMAIL:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

.field public static final enum GEO:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

.field public static final enum IM:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

.field public static final enum NAME:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

.field public static final enum NICKNAME:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

.field public static final enum NOTE:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

.field public static final enum ORGANIZATION:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

.field public static final enum PHONE:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

.field public static final enum PHOTO:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

.field public static final enum POSTAL_ADDRESS:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

.field public static final enum SIP:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

.field public static final enum WEBSITE:Lcom/android/mms/vcard/VCardEntry$EntryLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->NAME:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    .line 90
    new-instance v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->PHONE:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    .line 91
    new-instance v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->EMAIL:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    .line 92
    new-instance v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    const-string v1, "POSTAL_ADDRESS"

    invoke-direct {v0, v1, v6}, Lcom/android/mms/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    .line 93
    new-instance v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    const-string v1, "ORGANIZATION"

    invoke-direct {v0, v1, v7}, Lcom/android/mms/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->ORGANIZATION:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    .line 94
    new-instance v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    const-string v1, "IM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/mms/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->IM:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    .line 95
    new-instance v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    const-string v1, "PHOTO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/mms/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->PHOTO:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    .line 96
    new-instance v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    const-string v1, "WEBSITE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/mms/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->WEBSITE:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    .line 97
    new-instance v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    const-string v1, "SIP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/mms/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->SIP:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    .line 98
    new-instance v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    const-string v1, "NICKNAME"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/mms/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->NICKNAME:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    .line 99
    new-instance v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    const-string v1, "NOTE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/mms/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->NOTE:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    .line 100
    new-instance v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    const-string v1, "BIRTHDAY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/mms/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->BIRTHDAY:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    .line 101
    new-instance v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    const-string v1, "ANNIVERSARY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/mms/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->ANNIVERSARY:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    .line 102
    new-instance v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    const-string v1, "GEO"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/mms/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->GEO:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    .line 103
    new-instance v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    const-string v1, "ANDROID_CUSTOM"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/mms/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->ANDROID_CUSTOM:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    .line 88
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    sget-object v1, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->NAME:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->PHONE:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->EMAIL:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->ORGANIZATION:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->IM:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->PHOTO:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->WEBSITE:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->SIP:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->NICKNAME:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->NOTE:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->BIRTHDAY:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->ANNIVERSARY:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->GEO:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->ANDROID_CUSTOM:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->$VALUES:[Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->$VALUES:[Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    invoke-virtual {v0}, [Lcom/android/mms/vcard/VCardEntry$EntryLabel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

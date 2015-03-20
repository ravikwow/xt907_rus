.class public final enum Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;
.super Ljava/lang/Enum;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryLabel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

.field public static final enum ANDROID_CUSTOM:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

.field public static final enum ANNIVERSARY:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

.field public static final enum BIRTHDAY:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

.field public static final enum EMAIL:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

.field public static final enum GEO:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

.field public static final enum IM:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

.field public static final enum NAME:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

.field public static final enum NICKNAME:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

.field public static final enum NOTE:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

.field public static final enum ORGANIZATION:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

.field public static final enum PHONE:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

.field public static final enum PHOTO:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

.field public static final enum POSTAL_ADDRESS:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

.field public static final enum SIP:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

.field public static final enum WEBSITE:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;


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
    new-instance v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v3}, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->NAME:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    .line 90
    new-instance v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v4}, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->PHONE:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    .line 91
    new-instance v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v5}, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->EMAIL:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    .line 92
    new-instance v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    const-string v1, "POSTAL_ADDRESS"

    invoke-direct {v0, v1, v6}, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    .line 93
    new-instance v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    const-string v1, "ORGANIZATION"

    invoke-direct {v0, v1, v7}, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->ORGANIZATION:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    .line 94
    new-instance v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    const-string v1, "IM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->IM:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    .line 95
    new-instance v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    const-string v1, "PHOTO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->PHOTO:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    .line 96
    new-instance v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    const-string v1, "WEBSITE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->WEBSITE:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    .line 97
    new-instance v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    const-string v1, "SIP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->SIP:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    .line 98
    new-instance v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    const-string v1, "NICKNAME"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->NICKNAME:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    .line 99
    new-instance v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    const-string v1, "NOTE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->NOTE:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    .line 100
    new-instance v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    const-string v1, "BIRTHDAY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->BIRTHDAY:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    .line 101
    new-instance v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    const-string v1, "ANNIVERSARY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->ANNIVERSARY:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    .line 102
    new-instance v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    const-string v1, "GEO"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->GEO:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    .line 103
    new-instance v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    const-string v1, "ANDROID_CUSTOM"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->ANDROID_CUSTOM:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    .line 88
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    sget-object v1, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->NAME:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->PHONE:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->EMAIL:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->ORGANIZATION:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->IM:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->PHOTO:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->WEBSITE:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->SIP:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->NICKNAME:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->NOTE:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->BIRTHDAY:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->ANNIVERSARY:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->GEO:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->ANDROID_CUSTOM:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->$VALUES:[Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public static values()[Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->$VALUES:[Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

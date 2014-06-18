.class public final enum Lcom/motorola/contacts/util/MEDialer$DialFrom;
.super Ljava/lang/Enum;
.source "MEDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/util/MEDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/contacts/util/MEDialer$DialFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/contacts/util/MEDialer$DialFrom;

.field public static final enum BTCMD:Lcom/motorola/contacts/util/MEDialer$DialFrom;

.field public static final enum BTREDIAL:Lcom/motorola/contacts/util/MEDialer$DialFrom;

.field public static final enum CONTACTS:Lcom/motorola/contacts/util/MEDialer$DialFrom;

.field public static final enum CONTACTSEARCH:Lcom/motorola/contacts/util/MEDialer$DialFrom;

.field public static final enum DIALERKEY:Lcom/motorola/contacts/util/MEDialer$DialFrom;

.field public static final enum FAVORITES:Lcom/motorola/contacts/util/MEDialer$DialFrom;

.field public static final enum MPC:Lcom/motorola/contacts/util/MEDialer$DialFrom;

.field public static final enum RECENT:Lcom/motorola/contacts/util/MEDialer$DialFrom;

.field public static final enum SPEEDDIAL:Lcom/motorola/contacts/util/MEDialer$DialFrom;

.field public static final enum UNKNOWN:Lcom/motorola/contacts/util/MEDialer$DialFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/motorola/contacts/util/MEDialer$DialFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;->UNKNOWN:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    .line 53
    new-instance v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;

    const-string v1, "DIALERKEY"

    invoke-direct {v0, v1, v4}, Lcom/motorola/contacts/util/MEDialer$DialFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;->DIALERKEY:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    .line 54
    new-instance v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;

    const-string v1, "RECENT"

    invoke-direct {v0, v1, v5}, Lcom/motorola/contacts/util/MEDialer$DialFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;->RECENT:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    .line 55
    new-instance v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;

    const-string v1, "CONTACTS"

    invoke-direct {v0, v1, v6}, Lcom/motorola/contacts/util/MEDialer$DialFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;->CONTACTS:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    .line 56
    new-instance v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;

    const-string v1, "FAVORITES"

    invoke-direct {v0, v1, v7}, Lcom/motorola/contacts/util/MEDialer$DialFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;->FAVORITES:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    .line 57
    new-instance v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;

    const-string v1, "SPEEDDIAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/contacts/util/MEDialer$DialFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;->SPEEDDIAL:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    .line 58
    new-instance v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;

    const-string v1, "BTREDIAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/contacts/util/MEDialer$DialFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;->BTREDIAL:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    .line 59
    new-instance v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;

    const-string v1, "BTCMD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/motorola/contacts/util/MEDialer$DialFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;->BTCMD:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    .line 60
    new-instance v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;

    const-string v1, "MPC"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/motorola/contacts/util/MEDialer$DialFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;->MPC:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    .line 61
    new-instance v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;

    const-string v1, "CONTACTSEARCH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/motorola/contacts/util/MEDialer$DialFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;->CONTACTSEARCH:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    .line 51
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/motorola/contacts/util/MEDialer$DialFrom;

    sget-object v1, Lcom/motorola/contacts/util/MEDialer$DialFrom;->UNKNOWN:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/contacts/util/MEDialer$DialFrom;->DIALERKEY:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/contacts/util/MEDialer$DialFrom;->RECENT:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/contacts/util/MEDialer$DialFrom;->CONTACTS:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/contacts/util/MEDialer$DialFrom;->FAVORITES:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/contacts/util/MEDialer$DialFrom;->SPEEDDIAL:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/contacts/util/MEDialer$DialFrom;->BTREDIAL:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/contacts/util/MEDialer$DialFrom;->BTCMD:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/contacts/util/MEDialer$DialFrom;->MPC:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/contacts/util/MEDialer$DialFrom;->CONTACTSEARCH:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;->$VALUES:[Lcom/motorola/contacts/util/MEDialer$DialFrom;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/contacts/util/MEDialer$DialFrom;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;

    return-object v0
.end method

.method public static values()[Lcom/motorola/contacts/util/MEDialer$DialFrom;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;->$VALUES:[Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-virtual {v0}, [Lcom/motorola/contacts/util/MEDialer$DialFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/contacts/util/MEDialer$DialFrom;

    return-object v0
.end method

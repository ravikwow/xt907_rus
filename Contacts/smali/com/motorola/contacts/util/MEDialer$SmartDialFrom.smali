.class public final enum Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;
.super Ljava/lang/Enum;
.source "MEDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/util/MEDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SmartDialFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

.field public static final enum QWERTY:Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

.field public static final enum SOFT:Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v2}, Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;->SOFT:Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

    .line 69
    new-instance v0, Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

    const-string v1, "QWERTY"

    invoke-direct {v0, v1, v3}, Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;->QWERTY:Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

    sget-object v1, Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;->SOFT:Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;->QWERTY:Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;->$VALUES:[Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

    return-object v0
.end method

.method public static values()[Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;->$VALUES:[Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

    return-object v0
.end method

.class final enum Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;
.super Ljava/lang/Enum;
.source "SmartDialerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/dialpad/SmartDialerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ScreenSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;

.field public static final enum UNKNOWN:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;

.field public static final enum VGA:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    new-instance v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    const-string v1, "VGA"

    invoke-direct {v0, v1, v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;->VGA:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    .line 205
    new-instance v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;->UNKNOWN:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    .line 203
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    sget-object v1, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;->VGA:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;->UNKNOWN:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;->$VALUES:[Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;

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
    .line 203
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;
    .locals 1

    .prologue
    .line 203
    const-class v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    return-object v0
.end method

.method public static values()[Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;->$VALUES:[Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    invoke-virtual {v0}, [Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    return-object v0
.end method

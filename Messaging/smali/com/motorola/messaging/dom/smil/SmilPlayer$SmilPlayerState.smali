.class final enum Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;
.super Ljava/lang/Enum;
.source "SmilPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/dom/smil/SmilPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SmilPlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

.field public static final enum INITIALIZED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

.field public static final enum PAUSED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

.field public static final enum PLAYED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

.field public static final enum PLAYING:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

.field public static final enum STOPPED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->INITIALIZED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    .line 56
    new-instance v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v3}, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    .line 57
    new-instance v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    const-string v1, "PLAYED"

    invoke-direct {v0, v1, v4}, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->PLAYED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    .line 58
    new-instance v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v5}, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    .line 59
    new-instance v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v6}, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->INITIALIZED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->PLAYED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->$VALUES:[Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    return-object v0
.end method

.method public static values()[Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;->$VALUES:[Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/messaging/dom/smil/SmilPlayer$SmilPlayerState;

    return-object v0
.end method

.class public final enum Lcom/motorola/messaging/model/Model$CreationMode;
.super Ljava/lang/Enum;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/model/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/messaging/model/Model$CreationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/messaging/model/Model$CreationMode;

.field public static final enum COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

.field public static final enum NONE:Lcom/motorola/messaging/model/Model$CreationMode;

.field public static final enum RETRIEVE:Lcom/motorola/messaging/model/Model$CreationMode;

.field public static final enum SLIDESHOW:Lcom/motorola/messaging/model/Model$CreationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/motorola/messaging/model/Model$CreationMode;

    const-string v1, "RETRIEVE"

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/model/Model$CreationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/model/Model$CreationMode;->RETRIEVE:Lcom/motorola/messaging/model/Model$CreationMode;

    .line 37
    new-instance v0, Lcom/motorola/messaging/model/Model$CreationMode;

    const-string v1, "COMPOSE"

    invoke-direct {v0, v1, v3}, Lcom/motorola/messaging/model/Model$CreationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    .line 38
    new-instance v0, Lcom/motorola/messaging/model/Model$CreationMode;

    const-string v1, "SLIDESHOW"

    invoke-direct {v0, v1, v4}, Lcom/motorola/messaging/model/Model$CreationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/model/Model$CreationMode;->SLIDESHOW:Lcom/motorola/messaging/model/Model$CreationMode;

    .line 39
    new-instance v0, Lcom/motorola/messaging/model/Model$CreationMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/motorola/messaging/model/Model$CreationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/model/Model$CreationMode;->NONE:Lcom/motorola/messaging/model/Model$CreationMode;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/motorola/messaging/model/Model$CreationMode;

    sget-object v1, Lcom/motorola/messaging/model/Model$CreationMode;->RETRIEVE:Lcom/motorola/messaging/model/Model$CreationMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/messaging/model/Model$CreationMode;->SLIDESHOW:Lcom/motorola/messaging/model/Model$CreationMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/messaging/model/Model$CreationMode;->NONE:Lcom/motorola/messaging/model/Model$CreationMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/messaging/model/Model$CreationMode;->$VALUES:[Lcom/motorola/messaging/model/Model$CreationMode;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/messaging/model/Model$CreationMode;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/Model$CreationMode;

    return-object v0
.end method

.method public static values()[Lcom/motorola/messaging/model/Model$CreationMode;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/motorola/messaging/model/Model$CreationMode;->$VALUES:[Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/messaging/model/Model$CreationMode;

    return-object v0
.end method

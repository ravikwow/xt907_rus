.class public final enum Lcom/motorola/messaging/mime/EncoderUtil$Usage;
.super Ljava/lang/Enum;
.source "EncoderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/mime/EncoderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Usage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/messaging/mime/EncoderUtil$Usage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/messaging/mime/EncoderUtil$Usage;

.field public static final enum TEXT_TOKEN:Lcom/motorola/messaging/mime/EncoderUtil$Usage;

.field public static final enum WORD_ENTITY:Lcom/motorola/messaging/mime/EncoderUtil$Usage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/motorola/messaging/mime/EncoderUtil$Usage;

    const-string v1, "TEXT_TOKEN"

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/mime/EncoderUtil$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/mime/EncoderUtil$Usage;->TEXT_TOKEN:Lcom/motorola/messaging/mime/EncoderUtil$Usage;

    .line 93
    new-instance v0, Lcom/motorola/messaging/mime/EncoderUtil$Usage;

    const-string v1, "WORD_ENTITY"

    invoke-direct {v0, v1, v3}, Lcom/motorola/messaging/mime/EncoderUtil$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/mime/EncoderUtil$Usage;->WORD_ENTITY:Lcom/motorola/messaging/mime/EncoderUtil$Usage;

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/messaging/mime/EncoderUtil$Usage;

    sget-object v1, Lcom/motorola/messaging/mime/EncoderUtil$Usage;->TEXT_TOKEN:Lcom/motorola/messaging/mime/EncoderUtil$Usage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/messaging/mime/EncoderUtil$Usage;->WORD_ENTITY:Lcom/motorola/messaging/mime/EncoderUtil$Usage;

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/messaging/mime/EncoderUtil$Usage;->$VALUES:[Lcom/motorola/messaging/mime/EncoderUtil$Usage;

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
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/messaging/mime/EncoderUtil$Usage;
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/motorola/messaging/mime/EncoderUtil$Usage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/mime/EncoderUtil$Usage;

    return-object v0
.end method

.method public static values()[Lcom/motorola/messaging/mime/EncoderUtil$Usage;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/motorola/messaging/mime/EncoderUtil$Usage;->$VALUES:[Lcom/motorola/messaging/mime/EncoderUtil$Usage;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/messaging/mime/EncoderUtil$Usage;

    return-object v0
.end method

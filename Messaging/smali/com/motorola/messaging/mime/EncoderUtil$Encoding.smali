.class public final enum Lcom/motorola/messaging/mime/EncoderUtil$Encoding;
.super Ljava/lang/Enum;
.source "EncoderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/mime/EncoderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/messaging/mime/EncoderUtil$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/messaging/mime/EncoderUtil$Encoding;

.field public static final enum B:Lcom/motorola/messaging/mime/EncoderUtil$Encoding;

.field public static final enum Q:Lcom/motorola/messaging/mime/EncoderUtil$Encoding;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/motorola/messaging/mime/EncoderUtil$Encoding;

    const-string v1, "B"

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/mime/EncoderUtil$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/mime/EncoderUtil$Encoding;->B:Lcom/motorola/messaging/mime/EncoderUtil$Encoding;

    .line 76
    new-instance v0, Lcom/motorola/messaging/mime/EncoderUtil$Encoding;

    const-string v1, "Q"

    invoke-direct {v0, v1, v3}, Lcom/motorola/messaging/mime/EncoderUtil$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/mime/EncoderUtil$Encoding;->Q:Lcom/motorola/messaging/mime/EncoderUtil$Encoding;

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/messaging/mime/EncoderUtil$Encoding;

    sget-object v1, Lcom/motorola/messaging/mime/EncoderUtil$Encoding;->B:Lcom/motorola/messaging/mime/EncoderUtil$Encoding;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/messaging/mime/EncoderUtil$Encoding;->Q:Lcom/motorola/messaging/mime/EncoderUtil$Encoding;

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/messaging/mime/EncoderUtil$Encoding;->$VALUES:[Lcom/motorola/messaging/mime/EncoderUtil$Encoding;

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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/messaging/mime/EncoderUtil$Encoding;
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/motorola/messaging/mime/EncoderUtil$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/mime/EncoderUtil$Encoding;

    return-object v0
.end method

.method public static values()[Lcom/motorola/messaging/mime/EncoderUtil$Encoding;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/motorola/messaging/mime/EncoderUtil$Encoding;->$VALUES:[Lcom/motorola/messaging/mime/EncoderUtil$Encoding;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/messaging/mime/EncoderUtil$Encoding;

    return-object v0
.end method

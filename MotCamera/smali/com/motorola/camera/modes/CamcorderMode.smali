.class public Lcom/motorola/camera/modes/CamcorderMode;
.super Lcom/motorola/camera/modes/VideoMode;
.source "CamcorderMode.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "Camcorder"

    sput-object v0, Lcom/motorola/camera/modes/CamcorderMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/motorola/camera/modes/VideoMode;-><init>()V

    return-void
.end method


# virtual methods
.method public getMode()Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->CAMCORDER:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    return-object v0
.end method

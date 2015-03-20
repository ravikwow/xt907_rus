.class public Lcom/motorola/blur/service/blur/ErrorTranslator$HTTP_STATUS_CODES;
.super Ljava/lang/Object;
.source "ErrorTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/ErrorTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HTTP_STATUS_CODES"
.end annotation


# static fields
.field public static final ACCEPTED:I = 0xca

.field public static final BAD_GATEWAY:I = 0x1f6

.field public static final BAD_REQUEST:I = 0x190

.field public static final FORBIDDEN:I = 0x193

.field public static final INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final NONE:I = 0x0

.field public static final OK:I = 0xc8

.field public static final SERVICE_UNAVAILABLE:I = 0x1f7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

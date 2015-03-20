.class public final Lcom/motorola/blur/provider/DeviceSetup$SyncConnect;
.super Ljava/lang/Object;
.source "DeviceSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/DeviceSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncConnect"
.end annotation


# static fields
.field public static final SYNC_ANY:I = 0xff

.field public static final SYNC_CELL:I = 0x1

.field public static final SYNC_NONE:I = 0x0

.field public static final SYNC_WIFI:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

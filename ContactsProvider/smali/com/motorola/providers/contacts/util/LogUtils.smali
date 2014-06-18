.class public Lcom/motorola/providers/contacts/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static final DBG:Z

.field private static DBG_LEVEL:I

.field public static final VDBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 12
    sput v3, Lcom/motorola/providers/contacts/util/LogUtils;->DBG_LEVEL:I

    .line 13
    sget v0, Lcom/motorola/providers/contacts/util/LogUtils;->DBG_LEVEL:I

    if-lt v0, v1, :cond_0

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/providers/contacts/util/LogUtils;->DBG:Z

    .line 15
    sget v0, Lcom/motorola/providers/contacts/util/LogUtils;->DBG_LEVEL:I

    if-lt v0, v3, :cond_1

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    sput-boolean v1, Lcom/motorola/providers/contacts/util/LogUtils;->VDBG:Z

    return-void

    :cond_0
    move v0, v2

    .line 13
    goto :goto_0

    :cond_1
    move v1, v2

    .line 15
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

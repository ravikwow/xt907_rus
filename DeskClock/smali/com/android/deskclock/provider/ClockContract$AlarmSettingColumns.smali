.class interface abstract Lcom/android/deskclock/provider/ClockContract$AlarmSettingColumns;
.super Ljava/lang/Object;
.source "ClockContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/provider/ClockContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "AlarmSettingColumns"
.end annotation


# static fields
.field public static final NO_RINGTONE:Ljava/lang/String;

.field public static final NO_RINGTONE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    sput-object v0, Lcom/android/deskclock/provider/ClockContract$AlarmSettingColumns;->NO_RINGTONE_URI:Landroid/net/Uri;

    .line 63
    sget-object v0, Lcom/android/deskclock/provider/ClockContract$AlarmSettingColumns;->NO_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/provider/ClockContract$AlarmSettingColumns;->NO_RINGTONE:Ljava/lang/String;

    return-void
.end method

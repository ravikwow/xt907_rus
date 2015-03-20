.class synthetic Lcom/motorola/messaging/settings/MessageSettings$4;
.super Ljava/lang/Object;
.source "MessageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/settings/MessageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$motorola$messaging$settings$MessageSettings$MmsMaxVideoResolution:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 808
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;->values()[Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings$4;->$SwitchMap$com$motorola$messaging$settings$MessageSettings$MmsMaxVideoResolution:[I

    :try_start_0
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings$4;->$SwitchMap$com$motorola$messaging$settings$MessageSettings$MmsMaxVideoResolution:[I

    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;->QCIF:Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings$4;->$SwitchMap$com$motorola$messaging$settings$MessageSettings$MmsMaxVideoResolution:[I

    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;->QVGA:Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings$4;->$SwitchMap$com$motorola$messaging$settings$MessageSettings$MmsMaxVideoResolution:[I

    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;->VGA:Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.class synthetic Lcom/motorola/simmanager/UserTask$4;
.super Ljava/lang/Object;
.source "UserTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/UserTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$motorola$simmanager$UserTask$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 407
    invoke-static {}, Lcom/motorola/simmanager/UserTask$Status;->values()[Lcom/motorola/simmanager/UserTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/simmanager/UserTask$4;->$SwitchMap$com$motorola$simmanager$UserTask$Status:[I

    :try_start_0
    sget-object v0, Lcom/motorola/simmanager/UserTask$4;->$SwitchMap$com$motorola$simmanager$UserTask$Status:[I

    sget-object v1, Lcom/motorola/simmanager/UserTask$Status;->RUNNING:Lcom/motorola/simmanager/UserTask$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/motorola/simmanager/UserTask$4;->$SwitchMap$com$motorola$simmanager$UserTask$Status:[I

    sget-object v1, Lcom/motorola/simmanager/UserTask$Status;->FINISHED:Lcom/motorola/simmanager/UserTask$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

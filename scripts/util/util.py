import numpy as np
import matplotlib.pyplot as plt

__all__ = ['plot_colors']

th = np.linspace(0, 2*np.pi, 512)

def plot_colors():
    """
    Print matplotlib default colors with tab names.

    Based on matplotlib example:
    https://matplotlib.org/users/dflt_style_changes.html
    """
    def color_demo(ax, colors, title):

        ax.set_title(title)
        for j, c in enumerate(colors):
            v_offset = -(j / len(colors))
            ax.plot(th, .1*np.sin(th) + v_offset, color=c)
            ax.annotate("'C{}'".format(j), (0, v_offset),
                        xytext=(-1.5, 0),
                        ha='right',
                        va='center',
                        color=c,
                        textcoords='offset points',
                        family='monospace')

            ax.annotate("{!r}".format(c), (2*np.pi, v_offset),
                        xytext=(1.5, 0),
                        ha='left',
                        va='center',
                        color=c,
                        textcoords='offset points',
                        family='monospace')
        ax.axis('off')

    fig, ax = plt.subplots()

    old_colors = ['b', 'g', 'r', 'c', 'm', 'y', 'k']

    new_colors = ['tab:blue', 'tab:orange', 'tab:green', 'tab:red',
                  'tab:purple', 'tab:brown', 'tab:pink', 'tab:gray',
                  'tab:olive', 'tab:cyan']

    color_demo(ax, new_colors, 'v2.0')

    fig.subplots_adjust(**{'bottom': 0.0, 'left': 0.059,
                           'right': 0.869, 'top': 0.895})
